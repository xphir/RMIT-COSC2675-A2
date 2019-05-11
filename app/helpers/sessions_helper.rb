module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Remembers a user in a persistent session.
  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  # Returns true if the given user is the current user.
  def current_user?(user)
    user == current_user
  end

  # Returns the user corresponding to the remember token cookie.
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  # Returns true if the user is an admin, false otherwise.
  def is_admin?
    current_user.admin?
  end

  # Logs out the current user.
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  # Forgets a persistent session.
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  # Logs out the current user.
  def log_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end
  
  # Redirects to stored location (or to the default).
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end

  
  # Redirect to login if not logged in
  def logged_users_only
    if !logged_in?
      flash[:danger] = "Error: You must be logged in to do that action. Redirecting to login page." if !logged_in?
      redirect_to @category
    end
  end

  # Redirect to root if logged in
  def guests_only
    if logged_in?
      flash[:danger] = "Error: You must be a guest to do that action. Redirecting to hompage."
      redirect_to @category
    end
  end

  # Redirect if not admin
  def admin_only
    if !is_admin?
      flash[:danger] = "Error: You must be an admin to do that action. Redirecting to hompage."
      redirect_to @category
    end
  end

  # Redirect if not admin
  def not_admin
    if is_admin?
      flash[:danger] = "Error: You must not be an admin to do that action. Redirecting to hompage."
      redirect_to @category
    end
  end
end
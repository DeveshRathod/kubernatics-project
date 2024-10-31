const API_BASE_URL = window._env_ && window._env_.REACT_APP_API_BASE_URL 
  ? window._env_.REACT_APP_API_BASE_URL 
  : "http://localhost:5001"; 

export default API_BASE_URL;

import axios from "axios";

class AxiosService {
  constructor() {
    const instance = axios.create();
    instance.interceptors.response.use(this.handleSuccess, this.handleError);
    this.instance = instance;
    instance.defaults.headers.common = {
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Methods": "GET,PUT,POST,DELETE,PATCH,OPTIONS",
      Authorization:
        "Bearer " +
        "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoZWxsbyIsImNyZWRlbnRpYWxzTm9uRXhwaXJlZCI6dHJ1ZSwiYWNjb3VudElzRW5hYmxlZCI6dHJ1ZSwiZXhwIjoxNjc5NzM1NDEyLCJpYXQiOjE2Nzk2NDkwMTIsImVtYWlsIjoiYmlsbGNwMzhAZ21haWwuY29tIiwiYXV0aG9yaXRpZXMiOlt7ImF1dGhvcml0eSI6IkFETUlOIn1dLCJhY2NvdW50Tm9uTG9ja2VkIjp0cnVlfQ.oktKnraTtJo7f_r_XeXP3mhTlKTRJe1WL4TTcIv5Q8k",
    };
  }

  handleSuccess(res) {
    return res;
  }

  handleError(err) {
    return Promise.reject(err);
  }

  get(url) {
    return this.instance.get(url);
  }

  post(url, body) {
    return this.instance.post(url, body);
  }

  put(url, body) {
    return this.instance.put(url, body);
  }

  delete(url) {
    return this.instance.delete(url);
  }
}

export default new AxiosService();

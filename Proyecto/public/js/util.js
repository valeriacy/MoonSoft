function consumirApi(httpService, req, successCallBack, errorCallBack){
    httpService(req)
    .then(successCallBack)
    .catch(errorCallBack);
}
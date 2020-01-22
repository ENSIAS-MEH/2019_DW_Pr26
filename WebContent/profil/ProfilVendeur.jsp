<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<div class="container-fluid">
          <div class="row">
            
            <div class="col-md-12">
              <div class="card card-profile">
                <div class="card-avatar">
                  <a href="#pablo">
                    <img class="img" src="images/faces/marc.jpg" />
                  </a>
                </div>
                <div class="card-body">
                  <h6 class="card-category text-gray">CEO / Co-Founder</h6>
                  <h4 class="card-title">Alec Thompson</h4>
                  <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Nom : </label>
                          <strong>{}</strong>
                          
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Prénom : </label>
                          <strong>{}</strong>
                          
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">CIN : </label>
                          <strong>{}</strong>
                          
                        </div>
                      </div>
                   
                    </div>
                    <div class="form-row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating"> Email : </label>
                          <strong>{}</strong>
                          
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">Date naissance : </label>
                          <strong>{}</strong>
                          
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">Sexe : </label>
                          <strong>{}</strong>
                          
                        </div>
                      </div>
                   
                    </div>
                  <p class="card-description" ></p>
                  <a href="#pablo" class="btn btn-primary btn-round">Follow</a>
                </div>
              </div>
            </div>
          </div>
        </div>
</html>
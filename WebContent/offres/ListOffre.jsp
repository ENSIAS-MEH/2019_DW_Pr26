<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title ">Liste de vos offres</h4>
                  <p class="card-category"> la liste de tous vos offres effectuées</p>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table">
                      <thead class=" text-primary">
                        <th>Catégorie</th>
                        <th>Pays</th>
                        <th>Ville</th>
                        <th>Adresse</th>
                        <th>Date Début</th>
                        <th>Date Fin</th>
                        <th>Etat</th>
                        <th>Action</th>
                      </thead>
                      <tbody>
                      <c:forEach items="${offres}" var="o">
                       <tr>
                          <td>${o.getCategorie()}</td>
                          <td>${o.getPays()}</td>
                          <td>${o.getVille()}</td>
                          <td>${o.getAdresse()}</td>
                          <td>${o.getDate_debut()}</td>
                          <td>${o.getDate_fin()}</td>
                          <td>
                           <c:if test="${o.getEtat() == 'en attente'}"> <button type="button" class="btn btn-warning btn-sm">En Attente</button></c:if>
                           <c:if test="${o.getEtat() == 'acceptee'}"> <button type="button" class="btn btn-info btn-sm">Acceptée</button></c:if>
                           <c:if test="${o.getEtat() == 'reservee'}"> <button type="button" class="btn btn-success btn-sm">Reservée</button></c:if>
                          </td>
                          <td>
                          	 <a href="DetailOffre.ma?id=${o.getId()}" class=" btn-circle btn-sm" title="Ouvrir"><i class="far fa-folder-open"></i></a>
                   			 <a href="ModifierOffre.ma?id=${o.getId()}" class="  btn-circle  btn-sm" title="Mettre à jour"> <i class="fas fa-sync"></i></a>
                  			 <a href="SupprimerOffre.ma?id=${o.getId()}" class="  btn-circle btn-sm" title="Supprimer" onclick="return confirm('Voulez vous vraiment supprimer cette demande');"><i class="fas fa-trash"></i></a>
                          </td>
                        </tr>
                      </c:forEach>
                       
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
            
          </div>
        </div>
</html>
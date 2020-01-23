<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en" >
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/offre/style.css">

</head>
<body>
<!-- Modal -info -->


  <ul id="progressbar">
    <li class="active">Categorie</li>
    <li>Informations</li>
    <li>Date</li>
    <li>Specification</li>
    <li>Description</li>
  </ul>

<form class="steps" method="post" action="ModifierOffre.ma" >
<input type="hidden"  name="id" value = "${offre.getId()}" >
  <!-- USER INFORMATION FIELD SET --> 
  <fieldset>
    <h2 class="fs-title">Categorie de la location</h2>
    <h3 class="fs-subtitle">Choisissez la catégorie de votre location</h3>
    <!-- Begin What's Your First Name Field -->
        <div class="categ field hs-form-field">
        
          <label for="hs_categ">Catégorie* :</label><br>
			<select  style="width:100%; height: 50px" name="categorie" value="${offre.getCategorie()}" id="categ" data-rule-required="true"  data-msg-required="Please choose an option" required="required">
    
    <option class="text-center"value="">--------choisir une catégorie--------</option>
    <c:choose>
    <c:when test="${offre.getCategorie() == 'chambreHotel'}">
        <option value="chambreHotel"  selected >Chambre d'un hôtel</option>
    </c:when>    
    <c:otherwise>
       <option value="chambreHotel"  >Chambre d'un hôtel</option>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${offre.getCategorie() == 'chambreHauberge'}">
        <option value="chambreHauberge" selected>Chambre d'un hauberge</option>
    </c:when>    
    <c:otherwise>
       <option value="chambreHauberge">Chambre d'un hauberge</option>
    </c:otherwise>
</c:choose>
  <c:choose>
    <c:when test="${offre.getCategorie() == 'chambreHote'}">
        <option value="chambreHote" selected>Chambre d'hôte</option>
    </c:when>    
    <c:otherwise>
       <option value="chambreHote">Chambre d'hôte</option>
    </c:otherwise>
</c:choose>  
    <c:choose>
    <c:when test="${offre.getCategorie() == 'maison'}">
         <option value="maison" selected >Maison</option>
    </c:when>    
    <c:otherwise>
        <option value="maison">Maison</option>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${offre.getCategorie() == 'appartement'}">
        <option value="appartement" selected>Appartement</option>
    </c:when>    
    <c:otherwise>
       <option value="appartement">Appartement</option>
     </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${offre.getCategorie() == 'logementUnique'}">
         <option value="logementUnique" selected>Logement Unique</option>
    </c:when>    
    <c:otherwise>
        <option value="logementUnique">Logement Unique</option>
    </c:otherwise>
</c:choose>
    
    
   
    
   
</select>
          
          <span class="error1" style="display: none;">
              <i class="error-log fa fa-exclamation-triangle"></i>
          </span>
        </div>
    <!-- End What's Your First Name Field -->

    <!-- Begin What's Your Email Field -->
        <div class="hs_nombre field hs-form-field">
        
          <label for="nmb">Nombre de personne* :</label>

          <input id="nmb" name="nombre_personne" required="required" type="number"  value = "${offre.getNombre_personne()}"  data-rule-required="true" data-msg-required="Please enter a number " >
          <span class="error1" style="display: none;">
              <i class="error-log fa fa-exclamation-triangle"></i>
          </span>
        </div>
    

    <!-- End Total Number of Constituents in Your Database Field -->
    <input type="button" data-page="1" name="next" class="next action-button" value="Next" />
  </fieldset>



  <!-- ACQUISITION FIELD SET -->  
  <fieldset>
    <h2 class="fs-title">Informations</h2>
    <h3 class="fs-subtitle">Des informations sur la location</h3>
      <!-- Begin Total Number of Donors in Year 1 Field -->
        <div class="form-item webform-component webform-component-textfield hs_total_number_of_donors_in_year_1 field hs-form-field" id="webform-component-acquisition--amount-1">
        
          <label for="pays">Pays *</label>

          <input id="pays" class="form-text hs-input" name="pays" required="required"  type="text"  value = "${offre.getPays()}" placeholder="" data-rule-required="true" data-msg-required="Please enter a text">
          <span class="error1" style="display: none;">
              <i class="error-log fa fa-exclamation-triangle"></i>
          </span>
        </div>
      <!-- End Total Number of Donors in Year 1 Field -->

      <!-- Begin Total Number of Donors in Year 2 Field -->
        <div class="form-item webform-component webform-component-textfield hs_total_number_of_donors_in_year_2 field hs-form-field" id="webform-component-acquisition--amount-2">
        
          <label for="ville">Ville *</label>

          <input id="ville" class="form-text hs-input" name="ville" required="required" type="text"  value = "${offre.getVille()}" placeholder="" data-rule-required="true" data-msg-required="Please enter a text">
          <span class="error1" style="display: none;">
              <i class="error-log fa fa-exclamation-triangle"></i>
          </span>
        </div>
        <!-- End Total Number of Donors in Year 2 Field -->

      <!-- Begin Calc of Total Number of Donors Fields -->
      <!-- THIS FIELD IS NOT EDITABLE | GRAYED OUT -->
        <div class="form-item webform-component webform-component-textfield webform-container-inline hs_total_donor_percent_change field hs-form-field">
        
          <label for="adresse">Adresse *</label>

          <input id="adresse" class="form-text hs-input" name="adresse"  type="text"  value = "${offre.getAdresse()}"  required="required" data-rule-required="true" data-msg-required="Please enter a text">
          <span class="error1" style="display: none;">
              <i class="error-log fa fa-exclamation-triangle"></i>
          </span>
        </div>
        <!-- End Calc of Total Number of Donors Fields -->
    <input type="button" data-page="2" name="previous" class="previous action-button" value="Previous" />
    <input type="button" data-page="2" name="next" class="next action-button" value="Next" />
   
  </fieldset>



  <!-- Cultivation FIELD SET -->  
  <fieldset>
    <h2 class="fs-title">Date & prix</h2>
    <h3 class="fs-subtitle">Date début, date fin et prix de la location</h3>
      <!-- Begin Average Gift Size in Year 1 Field -->
        <div class="form-item webform-component webform-component-textfield hs_average_gift_size_in_year_1 field hs-form-field" id="edit-submitted-cultivation-amount-1 average_gift_size_in_year_1-99a6d115-5e68-4355-a7d0-529207feb0b3_3256">
        
          <label for="date_debut">Date début *</label>

          <input id="date_debut" class="form-text hs-input" name="date_debut" required="required" type="date"  value = "${offre.getDate_debut()}" placeholder="" data-rule-required="true" data-msg-required="Please enter a valid date">
          <span class="error1" style="display: none;">
              <i class="error-log fa fa-exclamation-triangle"></i>
          </span>
        </div>
        <!-- End Average Gift Size in Year 1 Field -->

      <!-- Begin Average Gift Size in Year 2 Field -->
        <div class="form-item webform-component webform-component-textfield hs_average_gift_size_in_year_2 field hs-form-field" id="webform-component-cultivation--amount-2">
        
          <label for="date_fin">Date fin *</label>

          <input id="date_fin" class="form-text hs-input" name="date_fin" required="required" type="date"  value = "${offre.getDate_fin()}" placeholder="" data-rule-required="true" data-msg-required="Please enter a valid date">
          <span class="error1" style="display: none;">
              <i class="error-log fa fa-exclamation-triangle"></i>
          </span>
        </div>
        
        <div class="form-item webform-component webform-component-textfield webform-container-inline hs_total_donor_percent_change field hs-form-field">
        
          <label for="^prix">Prix/Nuit *</label>

          <input id="prix" class="form-text hs-input" name="prix"  type="number"  value = "${offre.getPrix()}" placeholder="0" required="required" data-rule-required="true" data-msg-required="Please enter a number">
          <span class="error1" style="display: none;">
              <i class="error-log fa fa-exclamation-triangle"></i>
          </span>
        </div>
        <div class="form-item webform-component webform-component-textfield webform-container-inline hs_total_donor_percent_change field hs-form-field">
        
          <label for="devise">Devise *</label>

          <input id="devise" class="form-text hs-input" name="devise"  type="text"  value = "${offre.getDevise()}"  required="required" data-rule-required="true" data-msg-required="Please enter a text">
          <span class="error1" style="display: none;">
              <i class="error-log fa fa-exclamation-triangle"></i>
          </span>
        </div>
        <!-- End Average Gift Size in Year 2 Field -->

     
        <!-- End Average Gift Size Perchent Change Field -->
    <input type="button" data-page="3" name="previous" class="previous action-button" value="Previous" />
    <input type="button" data-page="3" name="next" class="next action-button" value="Next" />
  </fieldset>



  <!-- Cultivation2 FIELD SET --> 
  <fieldset>
    <h2 class="fs-title">Spécification</h2>
    <h3 class="fs-subtitle">Spécifications de la location</h3>
              <!-- Begin Total Giving In Year 1 Field -->
        <div class="form-item webform-component webform-component-textfield" id="webform-component-cultivation--amount-3 hs_total_giving_in_year_1 field hs-form-field">
        
          <label for="bain">Nombre de salles de bain *</label>

          <input id="bain" class="form-text hs-input" name="salle_bain" required="required" size="60" maxlength="128" type="number"  value = "${offre.getSalle_bain()}" placeholder="" data-rule-required="true" data-msg-required="Please enter a valid number">
          <span class="error1" style="display: none;">
              <i class="error-log fa fa-exclamation-triangle"></i>
          </span>
        </div>
        <!-- End Total Giving In Year 1 Field -->

      <!-- Begin Total Giving In Year 2 Field -->
        <div class="form-item webform-component webform-component-textfield hs_total_giving_in_year_2 field hs-form-field" id="webform-component-cultivation--amount-4"> 
        
          <label for="nb_chambre">Nombre de chambres </label>

          <input id="nb_chambre" class="form-text hs-input" name="nb_chambre" required="required" size="60" maxlength="128" type="number"  value = "${offre.getNb_chambre()}" placeholder="" data-rule-required="true" data-msg-required="Please enter a valid number">
        <span class="error1" style="display: none;">
              <i class="error-log fa fa-exclamation-triangle"></i>
          </span>
        </div>
        
        <!-- End Total Giving In Year 2 Field -->

     
    <input type="button" data-page="4" name="previous" class="previous action-button" value="Previous" />
    <input type="button" data-page="4" name="next" class="next action-button" value="Next" />

  </fieldset>



  <!-- RETENTION FIELD SET -->  
  <fieldset>
    <h2 class="fs-title">Descriptions & photos</h2>
    <h3 class="fs-subtitle">Descriptions & photos </h3>
        <!-- Begin Total Number of Donors Who Gave in Year 1 Field -->
          <div class="form-item webform-component webform-component-textfield hs_number_of_donors_in_year_1 field hs-form-field" id="webform-component-retention--amount-1"> 
        
          <label for="description">Description </label>

          <textarea id="desciption" class="form-text hs-input" name="description"  rows="5" cols="33"  value = "${offre.getDescription()}"  ></textarea>
          
          </div>
           <div class="form-item webform-component webform-component-textfield hs_number_of_donors_in_year_1 field hs-form-field" id="webform-component-retention--amount-1"> 
        
          <label for="photo">Photo </label>

          <input id="photo"  type="file" class="form-text hs-input" name="photo"  accept="image/png, image/jpeg"/>
          
          </div>
       
       
    <input type="button" data-page="5" name="previous" class="previous action-button" value="Previous" />
    <input id="submit" class="hs-button primary large action-button next" type="submit" value="Submit">
</fieldset>

  </form>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
<script src='https://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.js'></script><script  src="js/offre/script.js"></script>

</body>
</html>

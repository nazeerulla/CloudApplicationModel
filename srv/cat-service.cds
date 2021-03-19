using { sap.com.secureapp as my } from '../db/schema';

service CatalogService @(_requires:'authenticated-user') {
  entity Student as projection on my.Student;
}

 annotate CatalogService.Student with  @(restrict: [
   { grant: 'READ', to: 'admin' } 
  ]);
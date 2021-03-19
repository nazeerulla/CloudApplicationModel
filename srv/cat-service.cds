using { sap.com.secureapp as my } from '../db/schema';

service CatalogService @(_requires:'authenticated-user') {
  @readonly entity Student as projection on my.Student;
}
//// hello test case///////////
 annotate CatalogService.Student with  @(restrict: [
   { grant: 'READ', to: 'admin' } 
  ]);
describe('Check code', function() {
  it('Does much!', function() {
	var url = 'https://';     ///Enter freedomBox IP
	cy.visit(url)
	cy.request(url)
	  .its('status').should('eq', 200)
})
})
describe('Check title', function() {
  it('Does much', function() {
 	cy.title().should('eq', 'FreedomBox')
})
})

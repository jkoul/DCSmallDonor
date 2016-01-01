# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Organization.destroy_all
Article.destroy_all

Organization.create(name: "Area Neighborhood Commission 3F", orgtype: "community", orgUrl: "http://anc.dc.gov/page/advisory-neighborhood-commission-3f")
Organization.create(name: "Asian Pacific American Labor Alliance - DC Chapter", orgtype: "local", orgUrl: "http://www.apalanet.org/washington_dc")
Organization.create(name: "Brennan Center for Justice", orgtype: "national", orgUrl: "http://www.brennancenter.org/")
Organization.create(name: "Code Pink DC", orgtype: "local", orgUrl: "http://www.codepink.org/")
Organization.create(name: "Communication Workers of America", orgtype: "national", orgUrl: "http://www.cwa-union.org/")
Organization.create(name: "Sierra Club - DC Chapter", orgtype: "local", orgUrl: "http://dc.sierraclub.org/")
Organization.create(name: "DC 350.org", orgtype: "local", orgUrl: "https://www.facebook.com/350DC/")
Organization.create(name: "DC Area Transmasculine Society", orgtype: "local", orgUrl: "https://dcats.org/")
Organization.create(name: "DC Coalition for Housing Justice", orgtype: "coalition-local", orgUrl: "https://coalitionforhousingjustice.org/")
Organization.create(name: "DC Divest", orgtype: "local", orgUrl: "http://dcdivest.org/")
Organization.create(name: "DC Environmental Network", orgtype: "coalition-local", orgUrl: "http://www.dcen.net/")
Organization.create(name: "DC Fair Budget Coalition", orgtype: "coalition-local", orgUrl: "http://www.fairbudget.org/")
Organization.create(name: "DC for Democracy", orgtype: "local", orgUrl: "http://www.dcfordemocracy.org/")
Organization.create(name: "Jews United for Justice", orgtype: "local", orgUrl: "http://jufj.org/")
Organization.create(name: "DC Jobs with Justice", orgtype: "coalition-local", orgUrl: "http://www.dcjwj.org/")
Organization.create(name: "DC Latino Caucus", orgtype: "local", orgUrl: "http://dclc.org/")
Organization.create(name: "DC Nurses Association", orgtype: "local", orgUrl: "http://www.dcna.org/")
Organization.create(name: "DC Peace Team", orgtype: "local", orgUrl: "http://dcpeaceteam.com/")
Organization.create(name: "DC Solar United Neighborhoods", orgtype: "local", orgUrl: "http://www.dcsun.org/")
Organization.create(name: "DC Statehood Green Party", orgtype: "local", orgUrl: "http://dcsgp.yolasite.com/")
Organization.create(name: "DC Tenants' Rights Center", orgtype: "local", orgUrl: "http://www.dctenants.com/")
Organization.create(name: "DC Vote", orgtype: "local", orgUrl: "http://www.dcvote.org/")
Organization.create(name: "DC Working Families Organization", orgtype: "local", orgUrl: "http://workingfamilies.org/states/district-of-columbia/")
Organization.create(name: "Demos", orgtype: "national", orgUrl: "http://www.demos.org/")
Organization.create(name: "Every Voice", orgtype: "national", orgUrl: "http://everyvoice.org/")
Organization.create(name: "Food and Water Watch", orgtype: "national", orgUrl: "http://www.foodandwaterwatch.org/")
Organization.create(name: "Franciscan Action Network", orgtype: "national", orgUrl: "https://franciscanaction.org/")
Organization.create(name: "Justice First", orgtype: "local", orgUrl: "http://justicefirst.nationbuilder.com/")
Organization.create(name: "ONE DC", orgtype: "local", orgUrl: "http://www.onedconline.org/")
Organization.create(name: "Pax Christi - Francis of Assisi Community (DC)", orgtype: "local", orgUrl: "http://www.paxchristimetrodc.org/")
Organization.create(name: "People for the American Way", orgtype: "national", orgUrl: "http://www.pfaw.org/")
Organization.create(name: "Postive Force DC", orgtype: "local", orgUrl: "https://www.facebook.com/positiveforcedc/")
Organization.create(name: "Public Citizen", orgtype: "lead", orgUrl: "https://www.citizen.org/")
Organization.create(name: "DC Re-Entry Network", orgtype: "local", orgUrl: "https://thereentrynetworkdc.wordpress.com/")
Organization.create(name: "Restaurant Opportunities Center-DC", orgtype: "local", orgUrl: "http://rocunited.org/dc/")
Organization.create(name: "Service Employees International Union, Local 32BJ", orgtype: "local", orgUrl: "http://www.seiu32bj.org/districts/dc-va-md/")
Organization.create(name: "SPACES", orgtype: "local", orgUrl: "http://www.thespacesproject.org/")
Organization.create(name: "Stop Police Terror Project DC", orgtype: "local", orgUrl: "https://www.facebook.com/stoppoliceterrorprojectdc")
Organization.create(name: "U.S. Public Interest Research Group", orgtype: "national", orgUrl: "http://www.uspirg.org/")
Organization.create(name: "United Food and Commercial Workers, Local 400", orgtype: "local", orgUrl: "http://400.ufcw.org/")
Organization.create(name: "Washington Ethical Society", orgtype: "local", orgUrl: "http://www.ethicalsociety.org/")
Organization.create(name: "We Are Family", orgtype: "local", orgUrl: "http://www.wearefamilydc.org/")
Organization.create(name: "William H. Lamar IV, Pastor, Metropolitan AME Church", orgtype: "individual", orgUrl: "http://www.metropolitaname.org/")
Organization.create(name: "The Assisi Community", orgtype: "local")

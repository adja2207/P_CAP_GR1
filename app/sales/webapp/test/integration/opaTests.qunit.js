sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'logaligroup/sales/test/integration/FirstJourney',
		'logaligroup/sales/test/integration/pages/SalesList',
		'logaligroup/sales/test/integration/pages/SalesObjectPage'
    ],
    function(JourneyRunner, opaJourney, SalesList, SalesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('logaligroup/sales') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSalesList: SalesList,
					onTheSalesObjectPage: SalesObjectPage
                }
            },
            opaJourney.run
        );
    }
);
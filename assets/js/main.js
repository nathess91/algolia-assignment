$(document).ready(function() {
  var search = instantsearch({
    appId: '6F1I9Y8L14',
    apiKey: '77dedf86eb26d49c8a13ce170ee733aa', // search only API key, no ADMIN key
    indexName: 'restaurant_index',
    urlSync: true,
  });

  // add search box widget
  search.addWidget(
    instantsearch.widgets.searchBox({
      container: '#search-input',
      placeholder: 'Search for Restaurants by Name, Cuisine, Location',
      autofocus: true
    })
  );

  // add hits widget
  search.addWidget(
    instantsearch.widgets.hits({
      container: '#hits',
      hitsPerPage: 3,
      templates: {
        item: getTemplate('hit'),
        empty: getTemplate('no-results')
      }
    })
  );

  // add stats widget
  search.addWidget(
    instantsearch.widgets.stats({
      container: '#stats',
      templates: {
        body: '<b>{{nbHits}} results found</b> <small>in {{processingTimeMS}} seconds</small>'
      }
    })
  );

  // add pagination widget
  search.addWidget(
    instantsearch.widgets.pagination({
      container: '#pagination',
      labels: {
        next: '<button class="btn btn-default">Show More</button>',
        previous: '<button class="btn btn-primary">Back</button>'
      }
    })
  );

  // get underlying template
  function getTemplate(templateName) {
    return document.getElementById(templateName + '-template').innerHTML;
  }

  // add menu for cuisine
  search.addWidget(
    instantsearch.widgets.menu({
      container: '#food_type',
      attributeName: 'food_type',
      limit: 7,
      sortBy: ['count:desc', 'name:asc'],
      templates: {
        header: '<h5>Cuisine/Food Type</h5>'
      },
      cssClasses: {
        active: 'list-group-item active',
        item: 'list-group-item'
      }
    })
  );

  // add menu for rating
  search.addWidget(
    instantsearch.widgets.menu({
      container: '#stars_count',
      attributeName: 'stars_count',
      limit: 10,
      sortBy: ['count:desc', 'name:asc'],
      templates: {
        header: '<h5>Rating</h5>'
      }
    })
  );

  // add menu for payment options
  search.addWidget(
    instantsearch.widgets.menu({
      container: '#payment_options',
      attributeName: 'payment_options',
      limit: 10,
      sortBy: ['count:desc', 'name:asc'],
      templates: {
        header: '<h5>Payment Options</h5>'
      }
    })
  );

  search.start();
});

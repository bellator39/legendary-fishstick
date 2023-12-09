<#import "components/commonAdminComponent.ftlh" as commonPage>
<@commonPage.page pageName="Dashboard">
  <div class="content-wrapper">
    <div class="row">
      <div class="col-md-12 grid-margin">
        <div class="row">
          <div class="col-12 col-xl-8 mb-4 mb-xl-0">
            <h3 class="font-weight-bold">Welcome FoodDelivery Admin Panel</h3>
            <h6 class="font-weight-normal mb-0">All systems are running great!</h6>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6 grid-margin stretch-card">
        <div class="card tale-bg">
          <div class="card-people mt-auto">
            <img src="/static/admin_panel_style/images/dashboard/people.svg" alt="people">
            <div class="weather-info">
              <div class="d-flex">
                <div>
                  <h2 class="mb-0 font-weight-normal"><i class="icon-sun mr-2"></i>-7<sup>C</sup>
                  </h2>
                </div>
                <div class="ml-2">
                  <h4 class="location font-weight-normal">Minsk</h4>
                  <h6 class="font-weight-normal">Belarus</h6>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-6 grid-margin transparent">
        <div class="row">
          <div class="col-md-6 mb-4 stretch-card transparent">
            <div class="card card-tale">
              <div class="card-body">
                <p class="mb-4">Today’s Orders</p>
                <p class="fs-30 mb-2"><#if orderList??>
                        ${orderList?size}
                    <#else>
                      4212
                    </#if></p>
                <p>10.00% (30 days)</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 mb-4 stretch-card transparent">
            <div class="card card-dark-blue">
              <div class="card-body">
                <p class="mb-4">Total new Users<i class="fa fa-users" aria-hidden="true"></i></p>
                <p class="fs-30 mb-2"><#if userList??>${userList?size}
                    <#else>
                      1231
                    </#if></p>
                <p>22.00% (30 days)</p>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 mb-4 mb-lg-0 stretch-card transparent">
            <div class="card card-light-blue">
              <div class="card-body">
                <p class="mb-4">Number of testimonals</p>
                <p class="fs-30 mb-2"><#if listProductReview??>${listProductReview?size}
                    <#else>
                      3123
                    </#if></p>
                <p>2.00% (30 days)</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 stretch-card transparent">
            <div class="card card-light-danger">
              <div class="card-body">
                <p class="mb-4">Number of contacts</p>
                <p class="fs-30 mb-2"><#if contactList??>${contactList?size}<#else>3412</#if></p>
                <p>0.22% (30 days)</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6 grid-margin stretch-card">
        <div class="card">
          <div class="card-body">
            <p class="card-title">Order Details</p>
            <p class="font-weight-500">The total number of sessions within the date range. It is the
              period time a user is actively engaged with your website, page or app, etc</p>
            <div class="d-flex flex-wrap mb-5">
              <div class="mr-5 mt-3">
                <p class="text-muted">Order value</p>
                <h3 class="text-primary fs-30 font-weight-medium">${totalOrderPrice}k</h3>
              </div>
              <div class="mr-5 mt-3">
                <p class="text-muted">Orders</p>
                <h3 class="text-primary fs-30 font-weight-medium"><#if orderList??>${orderList?size}<#else>4123</#if>
                  k</h3>
              </div>
              <div class="mr-5 mt-3">
                <p class="text-muted">Users</p>
                <h3 class="text-primary fs-30 font-weight-medium">71.56%</h3>
              </div>
            </div>
            <canvas id="order-chart"></canvas>
          </div>
        </div>
      </div>
      <div class="col-md-6 grid-margin stretch-card">
        <div class="card">
          <div class="card-body">
            <div class="d-flex justify-content-between">
              <p class="card-title">Sales Report</p>
            </div>
            <p class="font-weight-500">The total number of sessions within the date range. It is the
              period time a user is actively engaged with your website, page or app, etc</p>
            <div id="sales-legend" class="chartjs-legend mt-4 mb-2"></div>
            <canvas id="sales-chart"></canvas>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12 grid-margin stretch-card">
        <div class="card position-relative">
          <div class="card-body">
            <div id="detailedReports"
                 class="carousel slide detailed-report-carousel position-static pt-2"
                 data-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <div class="row">
                    <div class="col-md-12 col-xl-3 d-flex flex-column justify-content-start">
                      <div class="ml-xl-4 mt-3">
                        <p class="card-title">Detailed Reports</p>
                        <h1 class="text-primary">$34040</h1>
                        <h3 class="font-weight-500 mb-xl-4 text-primary">Minsk</h3>
                        <p class="mb-2 mb-xl-0">The total number of sessions within the date range.
                          It is the period time a user is actively engaged with your website, page
                          or app, etc</p>
                      </div>
                    </div>
                    <div class="col-md-12 col-xl-9">
                      <div class="row">
                        <div class="col-md-6 border-right">
                          <div class="table-responsive mb-3 mb-md-0 mt-3">
                            <table class="table table-borderless report-table">
                              <tr>
                                <td class="text-muted">Frunzenski</td>
                                <td class="w-100 px-0">
                                  <div class="progress progress-md mx-4">
                                    <div class="progress-bar bg-primary" role="progressbar"
                                         style="width: 70%" aria-valuenow="70" aria-valuemin="0"
                                         aria-valuemax="100"></div>
                                  </div>
                                </td>
                                <td><h5 class="font-weight-bold mb-0">713</h5></td>
                              </tr>
                              <tr>
                                <td class="text-muted">Moscowski</td>
                                <td class="w-100 px-0">
                                  <div class="progress progress-md mx-4">
                                    <div class="progress-bar bg-warning" role="progressbar"
                                         style="width: 30%" aria-valuenow="30" aria-valuemin="0"
                                         aria-valuemax="100"></div>
                                  </div>
                                </td>
                                <td><h5 class="font-weight-bold mb-0">583</h5></td>
                              </tr>
                              <tr>
                                <td class="text-muted">Oktyabrski</td>
                                <td class="w-100 px-0">
                                  <div class="progress progress-md mx-4">
                                    <div class="progress-bar bg-danger" role="progressbar"
                                         style="width: 95%" aria-valuenow="95" aria-valuemin="0"
                                         aria-valuemax="100"></div>
                                  </div>
                                </td>
                                <td><h5 class="font-weight-bold mb-0">924</h5></td>
                              </tr>
                              <tr>
                                <td class="text-muted">Leninski</td>
                                <td class="w-100 px-0">
                                  <div class="progress progress-md mx-4">
                                    <div class="progress-bar bg-info" role="progressbar"
                                         style="width: 60%" aria-valuenow="60" aria-valuemin="0"
                                         aria-valuemax="100"></div>
                                  </div>
                                </td>
                                <td><h5 class="font-weight-bold mb-0">664</h5></td>
                              </tr>
                              <tr>
                                <td class="text-muted">Zavadskoi</td>
                                <td class="w-100 px-0">
                                  <div class="progress progress-md mx-4">
                                    <div class="progress-bar bg-primary" role="progressbar"
                                         style="width: 40%" aria-valuenow="40" aria-valuemin="0"
                                         aria-valuemax="100"></div>
                                  </div>
                                </td>
                                <td><h5 class="font-weight-bold mb-0">560</h5></td>
                              </tr>
                              <tr>
                                <td class="text-muted">Partyzanski</td>
                                <td class="w-100 px-0">
                                  <div class="progress progress-md mx-4">
                                    <div class="progress-bar bg-danger" role="progressbar"
                                         style="width: 75%" aria-valuenow="75" aria-valuemin="0"
                                         aria-valuemax="100"></div>
                                  </div>
                                </td>
                                <td><h5 class="font-weight-bold mb-0">793</h5></td>
                              </tr>
                            </table>
                          </div>
                        </div>
                        <div class="col-md-6 mt-3">
                          <canvas id="north-america-chart"></canvas>
                          <div id="north-america-legend"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="carousel-item">
                  <div class="row">
                    <div class="col-md-12 col-xl-3 d-flex flex-column justify-content-start">
                      <div class="ml-xl-4 mt-3">
                        <p class="card-title">Detailed Reports</p>
                        <h1 class="text-primary">$34040</h1>
                        <h3 class="font-weight-500 mb-xl-4 text-primary">Brest</h3>
                        <p class="mb-2 mb-xl-0">The total number of sessions within the date range.
                          It is the period time a user is actively engaged with your website, page
                          or app, etc</p>
                      </div>
                    </div>
                    <div class="col-md-12 col-xl-9">
                      <div class="row">
                        <div class="col-md-6 border-right">
                          <div class="table-responsive mb-3 mb-md-0 mt-3">
                            <table class="table table-borderless report-table">
                              <tr>
                                <td class="text-muted">Vulka</td>
                                <td class="w-100 px-0">
                                  <div class="progress progress-md mx-4">
                                    <div class="progress-bar bg-primary" role="progressbar"
                                         style="width: 70%" aria-valuenow="70" aria-valuemin="0"
                                         aria-valuemax="100"></div>
                                  </div>
                                </td>
                                <td><h5 class="font-weight-bold mb-0">713</h5></td>
                              </tr>
                              <tr>
                                <td class="text-muted">Vostok</td>
                                <td class="w-100 px-0">
                                  <div class="progress progress-md mx-4">
                                    <div class="progress-bar bg-warning" role="progressbar"
                                         style="width: 30%" aria-valuenow="30" aria-valuemin="0"
                                         aria-valuemax="100"></div>
                                  </div>
                                </td>
                                <td><h5 class="font-weight-bold mb-0">583</h5></td>
                              </tr>
                              <tr>
                                <td class="text-muted">Centr</td>
                                <td class="w-100 px-0">
                                  <div class="progress progress-md mx-4">
                                    <div class="progress-bar bg-danger" role="progressbar"
                                         style="width: 95%" aria-valuenow="95" aria-valuemin="0"
                                         aria-valuemax="100"></div>
                                  </div>
                                </td>
                                <td><h5 class="font-weight-bold mb-0">924</h5></td>
                              </tr>
                              <tr>
                                <td class="text-muted">Kavalevka</td>
                                <td class="w-100 px-0">
                                  <div class="progress progress-md mx-4">
                                    <div class="progress-bar bg-info" role="progressbar"
                                         style="width: 60%" aria-valuenow="60" aria-valuemin="0"
                                         aria-valuemax="100"></div>
                                  </div>
                                </td>
                                <td><h5 class="font-weight-bold mb-0">664</h5></td>
                              </tr>
                              <tr>
                                <td class="text-muted">Rechica</td>
                                <td class="w-100 px-0">
                                  <div class="progress progress-md mx-4">
                                    <div class="progress-bar bg-primary" role="progressbar"
                                         style="width: 40%" aria-valuenow="40" aria-valuemin="0"
                                         aria-valuemax="100"></div>
                                  </div>
                                </td>
                                <td><h5 class="font-weight-bold mb-0">560</h5></td>
                              </tr>
                              <tr>
                                <td class="text-muted">New Vulka</td>
                                <td class="w-100 px-0">
                                  <div class="progress progress-md mx-4">
                                    <div class="progress-bar bg-danger" role="progressbar"
                                         style="width: 75%" aria-valuenow="75" aria-valuemin="0"
                                         aria-valuemax="100"></div>
                                  </div>
                                </td>
                                <td><h5 class="font-weight-bold mb-0">793</h5></td>
                              </tr>
                            </table>
                          </div>
                        </div>
                        <div class="col-md-6 mt-3">
                          <canvas id="south-america-chart"></canvas>
                          <div id="south-america-legend"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <a class="carousel-control-prev" href="#detailedReports" role="button"
                 data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#detailedReports" role="button"
                 data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-7 grid-margin stretch-card">
        <div class="card">
          <div class="card-body">
            <p class="card-title mb-0">Top Products</p>
            <div class="table-responsive">
              <table class="table table-striped table-borderless">
                <thead>
                <tr>
                  <th>Product</th>
                  <th>Total Price</th>
                  <th>Last Date</th>
                  <th>Status</th>
                </tr>
                </thead>
                <tbody>
                <#if mostReviewProduct??>
                    <#list mostReviewProduct as pr>
                      <tr>
                        <td>${pr.name}</td>
                        <td class="font-weight-bold">$${pr.price}</td>
                        <td>${pr.dateCreate}</td>
                        <td class="font-weight-medium">
                            <#if pr.count==0>
                              <div class="badge badge-danger">Not available</div>
                            </#if>
                            <#if pr.count gt 0>
                              <div class="badge badge-success">In Stock</div>
                            </#if>
                        </td>
                      </tr>
                    </#list>
                </#if>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-4 stretch-card grid-margin">
        <div class="card">
          <div class="card-body">
            <p class="card-title mb-0">Category</p>
            <div class="table-responsive">
              <table class="table table-borderless">
                <thead>
                <tr>
                  <th class="pl-0  pb-2 border-bottom">Category</th>
                  <th class="border-bottom pb-2">Products</th>
                </tr>
                </thead>
                <tbody>
                <#list productCategory as cat>
                  <tr>
                    <td class="pl-0">${cat.name}</td>
                    <td><p class="mb-0"><span
                            class="font-weight-bold mr-2">${cat.getProducts()?size}</td>
                  </tr>
                </#list>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</@commonPage.page>
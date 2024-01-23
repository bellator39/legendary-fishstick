<#import "components/commonAdminComponent.ftlh" as commonPage>
<#include "components/securityCred.ftlh"/>

<@commonPage.page pageName="ListProduct">
  <div class="content-wrapper">
    <div class="row">
      <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
          <div class="card-body">
            <h4 class="card-title">List of product
                <#if admin==true>
                  <a href="/admin/addproduct" style="float: right;" type="button"
                     class="btn btn-primary">+</a>
                </#if>
            </h4>
            <p class="card-description">
              All product in shop
            </p>

            <div class="table-responsive">
              <table class="table table-striped">
                <thead>
                <tr>
                  <th>
                    Id
                  </th>
                  <th>
                    Name
                  </th>
                  <th>
                    Description
                  </th>
                  <th>
                    Photo
                  </th>
                  <th>
                    Weight
                  </th>
                  <th>
                    Price
                  </th>
                  <th>
                    Count
                  </th>
                  <th>
                    Count Of Buy
                  </th>
                  <th>
                    Category
                  </th>
                  <th>
                    Status
                  </th>
                  <th>
                    Date create
                  </th>
                    <#if moderator==true>
                      <th>
                        Edit
                      </th>
                      <th>
                        Delete
                      </th>
                    </#if>
                  <th>
                    List of reviews
                  </th>
                </tr>
                </thead>
                <tbody>
                <#if listProducts?? && listProducts?size gt 0>
                    <#list listProducts as product>
                      <tr>
                        <td>
                            ${product.id}
                        </td>
                        <td>
                            ${product.name}
                        </td>
                        <td>
                            ${product.description}
                        </td>
                        <td class="py-1">
                          <img src="${product.photoUrl}"/>
                        </td>
                        <td>
                            ${product.weight}
                        </td>
                        <td>
                            ${product.price}
                        </td>
                        <td>
                            ${product.count}
                        </td>
                        <td>
                            ${product.countOfBuy}
                        </td>
                        <td>
                            ${product.categoryProduct.name}
                        </td>
                        <td>
                            ${product.status}
                        </td>
                        <td>
                            ${product.dateCreate}
                        </td>
                          <#if moderator==true>
                            <td>
                              <a href="/admin/editproduct/${product.id}" type="button"
                                 class="btn btn-primary">
                                <i class="mdi mdi-pencil"></i>
                              </a>
                            </td>
                            <td>
                              <a href="/admin/deleteproduct/${product.id}" type="button"
                                 class="btn btn-primary">
                                <i class="mdi mdi-bitbucket"></i>
                              </a>
                            </td>
                          </#if>
                      </tr>
                    </#list>
                <#else>
                  <tr>
                    <td>Product doesn't exists.</td>
                  </tr>
                </#if>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</@commonPage.page>
<#import "components/commonAdminComponent.ftlh" as commonPage>
<@commonPage.page pageName="ListBlogs">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">List of blogs
                            <a href="/admin/addblog" style="float: right;" type="button" class="btn btn-primary">+</a>
                        </h4>
                        <p class="card-description">
                            All blogs in shop
                        </p>

                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>
                                        Id
                                    </th>
                                    <th>
                                        Title
                                    </th>
                                    <th>
                                        Text
                                    </th>
                                    <th>
                                        Photo
                                    </th>
                                    <th>
                                        Author
                                    </th>
                                    <th>
                                        Date create
                                    </th>
                                    <th>
                                        Blog Category
                                    </th>
                                    <th>
                                        Edit
                                    </th>
                                    <th>
                                        Delete
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <#if listBlog?? && listBlog?size gt 0>
                                    <#list listBlog as blog>
                                    <tr>
                                        <td>
                                            ${blog.id}
                                        </td>
                                        <td>
                                            ${blog.title}
                                        </td>
                                        <td>
                                            ${blog.text}
                                        </td>
                                        <td class="py-1">
                                            <img src="${blog.photoUrl}"/>
                                        </td>
                                        <td>
                                            ${blog.author}
                                        </td>
                                        <td>
                                            ${blog.dateCreate}
                                        </td>
                                        <td>
                                            ${blog.blogCategory.name}
                                        </td>
                                        <td>
                                            <a href="/admin/editblog/${blog.id}" type="button" class="btn btn-primary">
                                                <i class="mdi mdi-pencil"></i>
                                            </a>
                                        </td>
                                        <td>
                                            <a href="/admin/deleteblog/${blog.id}" type="button" class="btn btn-primary">
                                                <i class="mdi mdi-bitbucket"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    </#list>
                                    <#else>
                                    <tr>
                                        <td>Blogs doesn't exists.</td>
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
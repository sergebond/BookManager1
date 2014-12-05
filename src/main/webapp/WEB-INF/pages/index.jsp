<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<t:template>
        <c:if test = "${!empty books}">
            <table class ="book-list-table">
                <tr>
                    <th>Name</th>
                    <th>Genre</th>
                    <sec:authorize access="hasRole('admin')">
                        <th>&nbsp;</th>
                    </sec:authorize>

                </tr>
                <c:forEach items = "${books}" var = "book">
                    <tr>
                        <td>${book.name}</td>
                        <td>${book.genre}</td>
                            <sec:authorize access="hasRole('admin')">
                        <td><a href="javascript:BookUtil.deleteBook(${book.iD})">Delete</a></td>
                        </sec:authorize>

                    </tr>
                </c:forEach>
            </table>
        </c:if>
          <sec:authorize access="isAuthenticated()">
             <a href="addBook">Add Book</a>
          </sec:authorize>

</t:template>

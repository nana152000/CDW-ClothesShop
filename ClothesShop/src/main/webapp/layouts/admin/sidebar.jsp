<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	   <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
    <li class="nav-item active">
        <a class="nav-link" href="<c:url value="/quan-tri/san-pham" /> ">
          <i class="fas fa-fw fa-table"></i>
          <span>Sản phẩm</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="/quan-tri/loai-sp" />">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Loại sản phẩm</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="/quan-tri/mau-sac-sp" />">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Màu sắc sản phẩm</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="/quan-tri/menus" />">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Thanh điều hướng</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="/quan-tri/slides" />">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Slides</span></a>
      </li>
      
    </ul>
ActionView::Helpers::AssetTagHelper.register_javascript_expansion monkey: ["head", "body", "tail"]
 
javascript_include_tag :monkey # =>
  <script src="/vendor/jquery/js/jquery.js"></script>

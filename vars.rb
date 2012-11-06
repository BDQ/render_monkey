TEMPLATE = %q{<ul id="products" class="inline product-listing">
    <% if(products.length==0){ %>
      <li>No products found.</li>
    <% } %>
    <% _.each(products, function(product) { %>
      <li id="product_<%= product.id %>" class="columns three" data-hook="products_list_item" itemscope itemtype="http://schema.org/Product">
        <div class="product-image">
          <a href="/products/<%= product['permalink'] %>" data-push-state>
            <img src="/spree/products/<%= product.images[0].id %>/small/<%= product.images[0]['attachment_file_name'] %>">
          </a>
        </div>
        <a href="#" class="info"><%= product.name %></a>
        <span class="price selling" itemprop="price"><%= product.price %></span>
      </li>
    <% }); %>
  </ul>}

JSON_DATA = JSON.parse %q{{"count":16,"current_page":2,"pages":2,"products":[{"id":723959550,"name":"Ruby on Rails Bag","description":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nulla nonummy aliquet mi. Proin lacus. Ut placerat. Proin consequat, justo sit amet tempus consequat, elit est adipiscing odio, ut egestas pede eros in diam. Proin varius, lacus vitae suscipit varius, ipsum eros convallis nisi, sit amet sodales lectus pede non est. Duis augue. Suspendisse hendrerit pharetra metus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur nec pede. Quisque volutpat, neque ac porttitor sodales, sem lacus rutrum nulla, ullamcorper placerat ante tortor ac odio. Suspendisse vel libero. Nullam volutpat magna vel ligula. Suspendisse sit amet metus. Nunc quis massa. Nulla facilisi. In enim. In venenatis nisi id eros. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nunc sit amet felis sed lectus tincidunt egestas. Mauris nibh.","price":"22.99","available_on":"2012-08-15T14:39:59Z","permalink":"ruby-on-rails-bag","count_on_hand":10,"meta_description":null,"meta_keywords":null,"taxon_ids":[1002,31989848],"variants":[{"id":504220342,"name":"Ruby on Rails Bag","count_on_hand":10,"sku":"ROR-00012","price":"22.99","weight":null,"height":null,"width":null,"depth":null,"is_master":true,"cost_price":"21.0","permalink":"ruby-on-rails-bag","option_values":[]}],"images":[{"id":3,"position":1,"attachment_content_type":"image/jpeg","attachment_file_name":"ror_bag.jpeg","type":"Spree::Image","attachment_updated_at":"2012-08-15T14:40:21Z","attachment_width":360,"attachment_height":360,"alt":null,"viewable_type":"Spree::Variant","viewable_id":504220342}],"option_types":[],"product_properties":[{"id":243202933,"product_id":723959550,"property_id":901906169,"value":"600 Denier Polyester","property_name":"bag_material"},{"id":771636467,"product_id":723959550,"property_id":408437751,"value":"Messenger","property_name":"bag_type"},{"id":1067875249,"product_id":723959550,"property_id":591802549,"value":"14 1/2\" x 12\" x 5\"","property_name":"bag_size"}]},{"id":1025786064,"name":"Ruby on Rails Baseball Jersey","description":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nulla nonummy aliquet mi. Proin lacus. Ut placerat. Proin consequat, justo sit amet tempus consequat, elit est adipiscing odio, ut egestas pede eros in diam. Proin varius, lacus vitae suscipit varius, ipsum eros convallis nisi, sit amet sodales lectus pede non est. Duis augue. Suspendisse hendrerit pharetra metus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur nec pede. Quisque volutpat, neque ac porttitor sodales, sem lacus rutrum nulla, ullamcorper placerat ante tortor ac odio. Suspendisse vel libero. Nullam volutpat magna vel ligula. Suspendisse sit amet metus. Nunc quis massa. Nulla facilisi. In enim. In venenatis nisi id eros. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nunc sit amet felis sed lectus tincidunt egestas. Mauris nibh.","price":"19.99","available_on":"2012-08-15T14:39:59Z","permalink":"ruby-on-rails-baseball-jersey","count_on_hand":88,"meta_description":null,"meta_keywords":null,"taxon_ids":[3000,31989848],"variants":[{"id":97292824,"name":"Ruby on Rails Baseball Jersey","count_on_hand":14,"sku":"ROR-00006","price":"19.99","weight":null,"height":null,"width":null,"depth":null,"is_master":false,"cost_price":"17.0","permalink":"ruby-on-rails-baseball-jersey","option_values":[{"id":278588964,"name":"Green","presentation":"Green","option_type_name":"tshirt-color","option_type_id":643188970},{"id":553775723,"name":"Medium","presentation":"M","option_type_name":"tshirt-size","option_type_id":935339117}]},{"id":205047256,"name":"Ruby on Rails Baseball Jersey","count_on_hand":10,"sku":"ROR-00010","price":"21.99","weight":null,"height":null,"width":null,"depth":null,"is_master":false,"cost_price":"20.0","permalink":"ruby-on-rails-baseball-jersey","option_values":[{"id":574344309,"name":"Extra Large","presentation":"XL","option_type_name":"tshirt-size","option_type_id":935339117},{"id":979459986,"name":"Red","presentation":"Red","option_type_name":"tshirt-color","option_type_id":643188970}]},{"id":219452125,"name":"Ruby on Rails Baseball Jersey","count_on_hand":10,"sku":"ROR-001","price":"19.99","weight":null,"height":null,"width":null,"depth":null,"is_master":true,"cost_price":"17.0","permalink":"ruby-on-rails-baseball-jersey","option_values":[]},{"id":265742438,"name":"Ruby on Rails Baseball Jersey","count_on_hand":10,"sku":"ROR-00009","price":"19.99","weight":null,"height":null,"width":null,"depth":null,"is_master":false,"cost_price":"17.0","permalink":"ruby-on-rails-baseball-jersey","option_values":[{"id":278588964,"name":"Green","presentation":"Green","option_type_name":"tshirt-color","option_type_id":643188970},{"id":369541888,"name":"Large","presentation":"L","option_type_name":"tshirt-size","option_type_id":935339117}]},{"id":325821322,"name":"Ruby on Rails Baseball Jersey","count_on_hand":10,"sku":"ROR-00001","price":"19.99","weight":null,"height":null,"width":null,"depth":null,"is_master":false,"cost_price":"17.0","permalink":"ruby-on-rails-baseball-jersey","option_values":[{"id":453955339,"name":"Small","presentation":"S","option_type_name":"tshirt-size","option_type_id":935339117},{"id":979459986,"name":"Red","presentation":"Red","option_type_name":"tshirt-color","option_type_id":643188970}]},{"id":405540681,"name":"Ruby on Rails Baseball Jersey","count_on_hand":10,"sku":"ROR-00008","price":"19.99","weight":null,"height":null,"width":null,"depth":null,"is_master":false,"cost_price":"17.0","permalink":"ruby-on-rails-baseball-jersey","option_values":[{"id":369541888,"name":"Large","presentation":"L","option_type_name":"tshirt-size","option_type_id":935339117},{"id":506907318,"name":"Blue","presentation":"Blue","option_type_name":"tshirt-color","option_type_id":643188970}]},{"id":529709246,"name":"Ruby on Rails Baseball Jersey","count_on_hand":10,"sku":"ROR-00003","price":"19.99","weight":null,"height":null,"width":null,"depth":null,"is_master":false,"cost_price":"17.0","permalink":"ruby-on-rails-baseball-jersey","option_values":[{"id":278588964,"name":"Green","presentation":"Green","option_type_name":"tshirt-color","option_type_id":643188970},{"id":453955339,"name":"Small","presentation":"S","option_type_name":"tshirt-size","option_type_id":935339117}]},{"id":568516732,"name":"Ruby on Rails Baseball Jersey","count_on_hand":1,"sku":"ROR-00007","price":"19.99","weight":null,"height":null,"width":null,"depth":null,"is_master":false,"cost_price":"17.0","permalink":"ruby-on-rails-baseball-jersey","option_values":[{"id":369541888,"name":"Large","presentation":"L","option_type_name":"tshirt-size","option_type_id":935339117},{"id":979459986,"name":"Red","presentation":"Red","option_type_name":"tshirt-color","option_type_id":643188970}]},{"id":664770399,"name":"Ruby on Rails Baseball Jersey","count_on_hand":10,"sku":"ROR-00005","price":"19.99","weight":null,"height":null,"width":null,"depth":null,"is_master":false,"cost_price":"17.0","permalink":"ruby-on-rails-baseball-jersey","option_values":[{"id":506907318,"name":"Blue","presentation":"Blue","option_type_name":"tshirt-color","option_type_id":643188970},{"id":553775723,"name":"Medium","presentation":"M","option_type_name":"tshirt-size","option_type_id":935339117}]},{"id":947339321,"name":"Ruby on Rails Baseball Jersey","count_on_hand":3,"sku":"ROR-00004","price":"19.99","weight":null,"height":null,"width":null,"depth":null,"is_master":false,"cost_price":"17.0","permalink":"ruby-on-rails-baseball-jersey","option_values":[{"id":553775723,"name":"Medium","presentation":"M","option_type_name":"tshirt-size","option_type_id":935339117},{"id":979459986,"name":"Red","presentation":"Red","option_type_name":"tshirt-color","option_type_id":643188970}]},{"id":1013589412,"name":"Ruby on Rails Baseball Jersey","count_on_hand":10,"sku":"ROR-00002","price":"19.99","weight":null,"height":null,"width":null,"depth":null,"is_master":false,"cost_price":"17.0","permalink":"ruby-on-rails-baseball-jersey","option_values":[{"id":453955339,"name":"Small","presentation":"S","option_type_name":"tshirt-size","option_type_id":935339117},{"id":506907318,"name":"Blue","presentation":"Blue","option_type_name":"tshirt-color","option_type_id":643188970}]}],"images":[{"id":4,"position":1,"attachment_content_type":"image/jpeg","attachment_file_name":"ror_baseball.jpeg","type":"Spree::Image","attachment_updated_at":"2012-08-15T14:40:21Z","attachment_width":360,"attachment_height":360,"alt":null,"viewable_type":"Spree::Variant","viewable_id":219452125},{"id":5,"position":2,"attachment_content_type":"image/jpeg","attachment_file_name":"ror_baseball_back.jpeg","type":"Spree::Image","attachment_updated_at":"2012-08-15T14:40:22Z","attachment_width":360,"attachment_height":360,"alt":null,"viewable_type":"Spree::Variant","viewable_id":219452125}],"option_types":[{"id":935339117,"name":"tshirt-size","presentation":"Size","position":1,"option_values":[{"id":453955339,"name":"Small","presentation":"S","option_type_name":"tshirt-size","option_type_id":935339117},{"id":553775723,"name":"Medium","presentation":"M","option_type_name":"tshirt-size","option_type_id":935339117},{"id":369541888,"name":"Large","presentation":"L","option_type_name":"tshirt-size","option_type_id":935339117},{"id":574344309,"name":"Extra Large","presentation":"XL","option_type_name":"tshirt-size","option_type_id":935339117}]},{"id":643188970,"name":"tshirt-color","presentation":"Color","position":2,"option_values":[{"id":979459986,"name":"Red","presentation":"Red","option_type_name":"tshirt-color","option_type_id":643188970},{"id":278588964,"name":"Green","presentation":"Green","option_type_name":"tshirt-color","option_type_id":643188970},{"id":506907318,"name":"Blue","presentation":"Blue","option_type_name":"tshirt-color","option_type_id":643188970}]}],"product_properties":[{"id":183653538,"product_id":1025786064,"property_id":905834902,"value":"Baseball Jersey","property_name":"shirt_type"},{"id":316341113,"product_id":1025786064,"property_id":560029305,"value":"Wilson","property_name":"manufacturer"},{"id":323890842,"product_id":1025786064,"property_id":730553315,"value":"Men's","property_name":"gender"},{"id":732604053,"product_id":1025786064,"property_id":39476074,"value":"JK1002","property_name":"model"},{"id":739259141,"product_id":1025786064,"property_id":209471856,"value":"100% Cotton","property_name":"shirt_fabric"},{"id":823116847,"product_id":1025786064,"property_id":793908548,"value":"loose","property_name":"shirt_fit"},{"id":843432044,"product_id":1025786064,"property_id":305002717,"value":"long","property_name":"shirt_sleeve_length"},{"id":861445881,"product_id":1025786064,"property_id":161337574,"value":"Wannabe Sports","property_name":"brand"}]},{"id":1035865702,"name":"Ruby on Rails Stein","description":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nulla nonummy aliquet mi. Proin lacus. Ut placerat. Proin consequat, justo sit amet tempus consequat, elit est adipiscing odio, ut egestas pede eros in diam. Proin varius, lacus vitae suscipit varius, ipsum eros convallis nisi, sit amet sodales lectus pede non est. Duis augue. Suspendisse hendrerit pharetra metus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur nec pede. Quisque volutpat, neque ac porttitor sodales, sem lacus rutrum nulla, ullamcorper placerat ante tortor ac odio. Suspendisse vel libero. Nullam volutpat magna vel ligula. Suspendisse sit amet metus. Nunc quis massa. Nulla facilisi. In enim. In venenatis nisi id eros. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nunc sit amet felis sed lectus tincidunt egestas. Mauris nibh.","price":"16.99","available_on":"2012-08-15T14:39:59Z","permalink":"ruby-on-rails-stein","count_on_hand":10,"meta_description":null,"meta_keywords":null,"taxon_ids":[1003,31989848],"variants":[{"id":599112055,"name":"Ruby on Rails Stein","count_on_hand":10,"sku":"ROR-00016","price":"16.99","weight":null,"height":null,"width":null,"depth":null,"is_master":true,"cost_price":"15.0","permalink":"ruby-on-rails-stein","option_values":[]}],"images":[{"id":11,"position":1,"attachment_content_type":"image/jpeg","attachment_file_name":"ror_stein.jpeg","type":"Spree::Image","attachment_updated_at":"2012-08-15T14:40:26Z","attachment_width":360,"attachment_height":360,"alt":null,"viewable_type":"Spree::Variant","viewable_id":599112055},{"id":12,"position":2,"attachment_content_type":"image/jpeg","attachment_file_name":"ror_stein_back.jpeg","type":"Spree::Image","attachment_updated_at":"2012-08-15T14:40:27Z","attachment_width":360,"attachment_height":360,"alt":null,"viewable_type":"Spree::Variant","viewable_id":599112055}],"option_types":[],"product_properties":[{"id":769225731,"product_id":1035865702,"property_id":317319559,"value":"Stein","property_name":"mug_type"},{"id":1065431905,"product_id":1035865702,"property_id":704092869,"value":"6.75\" tall, 3.75\" dia. base, 3\" dia. rim","property_name":"mug_size"}]},{"id":1060500592,"name":"Ruby on Rails Jr. Spaghetti","description":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nulla nonummy aliquet mi. Proin lacus. Ut placerat. Proin consequat, justo sit amet tempus consequat, elit est adipiscing odio, ut egestas pede eros in diam. Proin varius, lacus vitae suscipit varius, ipsum eros convallis nisi, sit amet sodales lectus pede non est. Duis augue. Suspendisse hendrerit pharetra metus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur nec pede. Quisque volutpat, neque ac porttitor sodales, sem lacus rutrum nulla, ullamcorper placerat ante tortor ac odio. Suspendisse vel libero. Nullam volutpat magna vel ligula. Suspendisse sit amet metus. Nunc quis massa. Nulla facilisi. In enim. In venenatis nisi id eros. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nunc sit amet felis sed lectus tincidunt egestas. Mauris nibh.","price":"19.99","available_on":"2012-08-15T14:39:59Z","permalink":"ruby-on-rails-jr-spaghetti","count_on_hand":10,"meta_description":null,"meta_keywords":null,"taxon_ids":[2000,31989848],"variants":[{"id":489273655,"name":"Ruby on Rails Jr. Spaghetti","count_on_hand":10,"sku":"ROR-00013","price":"19.99","weight":null,"height":null,"width":null,"depth":null,"is_master":true,"cost_price":"17.0","permalink":"ruby-on-rails-jr-spaghetti","option_values":[]}],"images":[{"id":6,"position":1,"attachment_content_type":"image/jpeg","attachment_file_name":"ror_jr_spaghetti.jpeg","type":"Spree::Image","attachment_updated_at":"2012-08-15T14:40:23Z","attachment_width":360,"attachment_height":360,"alt":null,"viewable_type":"Spree::Variant","viewable_id":489273655}],"option_types":[],"product_properties":[{"id":172457766,"product_id":1060500592,"property_id":730553315,"value":"Women's","property_name":"gender"},{"id":198421197,"product_id":1060500592,"property_id":560029305,"value":"Jerseys","property_name":"manufacturer"},{"id":335217946,"product_id":1060500592,"property_id":905834902,"value":"Jr Spaghetti T","property_name":"shirt_type"},{"id":671520151,"product_id":1060500592,"property_id":793908548,"value":"form","property_name":"shirt_fit"},{"id":710004557,"product_id":1060500592,"property_id":161337574,"value":"Resilance","property_name":"brand"},{"id":726438360,"product_id":1060500592,"property_id":305002717,"value":"none","property_name":"shirt_sleeve_length"},{"id":849606441,"product_id":1060500592,"property_id":39476074,"value":"TL174","property_name":"model"},{"id":890856121,"product_id":1060500592,"property_id":209471856,"value":"90% Cotton, 10% Nylon","property_name":"shirt_fabric"}]}]}}

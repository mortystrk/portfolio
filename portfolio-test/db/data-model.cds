namespace test.portfolio;

entity Porfolio {
    key ID  : Integer;
    name    : String;
    budget  : Double;
}

entity PortfolioElementTree {
    key ID          : Integer;
    porfolio_id     : Association to Porfolio;
    element_tree_id : Association to ElementTree;
}

entity Bucket {
    key ID  : Integer;
    name    : String;
    budget  : String;
}


entity BucketElementTree {
    key ID          : Integer;
    bucket_id       : Association to Bucket;
    element_tree_id : Association to ElementTree;
}

entity Item {
    key ID  : Integer;
    name    : String;
    budget  : Double;
    planed  : Double;
    actual  : Double;
}

entity ItemElementTree {
    key Id          : Integer;
    item_id         : Association to Item;
    element_tree_id : Association to ElementTree;
}

entity ElementTree {
    key ID    : Integer;
    parent_id : Association to ElementTree;
}
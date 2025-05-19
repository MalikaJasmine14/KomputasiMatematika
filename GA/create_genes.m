function genes = create_genes(Mal)
random_number = randi([32,126],1,Mal);
genes = char(random_number);
end
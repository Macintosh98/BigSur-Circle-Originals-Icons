search_dir1="./PNG/*"
search_dir2="./scalable/*"

for entry1 in $search_dir1
do
    for entry2 in $search_dir2
    do
        a="${entry1##*/}"
        b="${entry2##*/}"
        name1=$(echo "$a" | cut -f 1 -d '.' | tr '[:upper:]' '[:lower:]')
        name2=$(echo "$b" | cut -f 1 -d '.' | tr '[:upper:]' '[:lower:]')
        if [ "$name1" = "$name2" ]
            then
                echo "$name1"
                mv ./PNG/${entry1##*/} ./PNG/$name1.svg
                rm ./scalable/${entry2##*/}
        fi
    done
done



#     for entry2 in $search_dir2
#     do
#         b="${entry2##*/}"
#         name2=$(echo "$b" | cut -f 1 -d '.')
    
#                     if [ $name2 = $name2 ]
#         then
#             echo "$name2"
#      fi
#     done

# a="A.txt"
# b=$(echo "$a" | cut -f 1 -d '.' | tr '[:upper:]' '[:lower:]')
#                     if [ $b = "a" ]
#         then
#             echo "true"
#             else
#             echo "false"
#      fi
post=$1

y=`date '+%Y'`
m=`date '+%m'`
d=`date '+%d'`

dated_name=$y-$m-$d-$post

echo "Publishing $post as $dated_name."

mv $post ../_posts/$dated_name

if [$? -eq 0]; do 
	git commit -am "add $dated_name"
	git push origin main
done

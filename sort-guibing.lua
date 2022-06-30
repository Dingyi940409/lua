local a = {5,1,3,4,2}

function sort(t1,l,r)
    
    if l<r then
        local mid = math.floor((l+r)/2)
        sort(t1,l,mid)
        sort(t1,mid+1,r)
        message(t1,l,mid,r)
    end
end

function message(t1,l,mid,r)
    local t = {}
    local i = l
    local j = mid+1
    local k = 1
    print("message,l:"..l..",mid:"..mid..",r:"..r)
    while(i<=mid and j <=r) do
        if t1[i]<=t1[j] then
            t[k] = t1[i]
            k = k+1
            i = i+1
        else
            t[k] = t1[j]
            k = k + 1
            j = j + 1 
        end
    end

    while(i <=mid) do
        t[k] = t1[i]
        k = k + 1
        i = i + 1
    end

    while(j <= r) do
        t[k] = t1[j]
        k = k + 1
        j = j + 1
    end
    k = 1

    while(l<=r) do
        t1[l] = t[k]
        l = l + 1
        k = k + 1
    end

end

sort(a,1,#a)

for i = 1,#a do
    print(i,a[i])
end
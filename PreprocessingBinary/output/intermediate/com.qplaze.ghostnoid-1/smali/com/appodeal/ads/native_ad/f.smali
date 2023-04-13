.class public Lcom/appodeal/ads/native_ad/f;
.super Lcom/appodeal/ads/af;


# static fields
.field private static b:Lcom/appodeal/ads/ac;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/af;-><init>()V

    return-void
.end method

.method public static c()Lcom/appodeal/ads/ac;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/native_ad/f;->b:Lcom/appodeal/ads/ac;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/appodeal/ads/an;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appodeal/ads/native_ad/f;

    invoke-direct {v0}, Lcom/appodeal/ads/native_ad/f;-><init>()V

    :cond_0
    new-instance v1, Lcom/appodeal/ads/ac;

    const-string v2, "debug_native"

    invoke-direct {v1, v2, v0}, Lcom/appodeal/ads/ac;-><init>(Ljava/lang/String;Lcom/appodeal/ads/af;)V

    sput-object v1, Lcom/appodeal/ads/native_ad/f;->b:Lcom/appodeal/ads/ac;

    :cond_1
    sget-object v0, Lcom/appodeal/ads/native_ad/f;->b:Lcom/appodeal/ads/ac;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/appodeal/ads/Native;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/ag;

    iget-object v0, v0, Lcom/appodeal/ads/ag;->c:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lcom/appodeal/ads/utils/g;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/appodeal/ads/utils/h;

    invoke-direct {v3, p1, v2}, Lcom/appodeal/ads/utils/h;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/appodeal/ads/native_ad/f$1;

    invoke-direct {v2, p0, v1, p2}, Lcom/appodeal/ads/native_ad/f$1;-><init>(Lcom/appodeal/ads/native_ad/f;Landroid/widget/RelativeLayout;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Lcom/appodeal/ads/native_ad/f$2;

    invoke-direct {v2, p0}, Lcom/appodeal/ads/native_ad/f$2;-><init>(Lcom/appodeal/ads/native_ad/f;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const-string v2, "#FF555555"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "#FF555555"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const-string v3, "appodeal"

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Landroid/app/Activity;III)V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

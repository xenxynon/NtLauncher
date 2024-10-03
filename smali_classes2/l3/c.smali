.class public final Ll3/c;
.super Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:I

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View$OnFocusChangeListener;

.field private f:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apps"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    iput-object p1, p0, Ll3/c;->a:Landroid/content/Context;

    iput-object p2, p0, Ll3/c;->b:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070076

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Ll3/c;->c:I

    sget-object p1, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

    iput-object p1, p0, Ll3/c;->f:Landroid/view/View$OnLongClickListener;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    const-string v0, "focusListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ll3/c;->e:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Ll3/c;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public clearHighlightedItem()V
    .locals 0

    return-void
.end method

.method public getDecorator()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 0

    new-instance p0, Ll3/c$a;

    invoke-direct {p0}, Ll3/c$a;-><init>()V

    return-object p0
.end method

.method public getItemsPerRow(II)I
    .locals 0

    const/16 p0, 0x400

    if-eq p1, p0, :cond_0

    const/16 p0, 0x800

    if-eq p1, p0, :cond_0

    const/16 p0, 0x2000

    if-eq p1, p0, :cond_0

    const/16 p0, 0x4000

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    return p2
.end method

.method public getSupportedItemsPerRowArray()[I
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->getSupportedItemsPerRowArray()[I

    move-result-object p0

    const-string v0, "super.getSupportedItemsPerRowArray()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public isViewSupported(I)Z
    .locals 0

    const/4 p0, 0x7

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    invoke-static {p0, p1}, Lo5/c;->j([II)Z

    move-result p0

    return p0

    nop

    :array_0
    .array-data 4
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
    .end array-data
.end method

.method public launchHighlightedItem()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBindView(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const v1, 0x7f0b01e9

    const/16 v2, 0x1000

    const-string v3, "null cannot be cast to non-null type com.android.launcher3.BubbleTextView"

    if-eq v0, v2, :cond_1

    const v2, 0x8000

    if-eq v0, v2, :cond_1

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ll3/c;->b:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "apps.getAdapterItems().get(position)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->reset()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ll3/c;->b:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->reset()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p2, p0}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
    .locals 7

    const-string v0, "mLayoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x400

    const/4 v1, 0x0

    if-eq p3, v0, :cond_9

    const/16 v0, 0x800

    const v2, 0x7f0b02ae

    const v3, 0x7f0e00f1

    if-eq p3, v0, :cond_8

    const/16 v0, 0x1000

    const v4, 0x7f0b01e9

    const/high16 v5, 0x3f200000    # 0.625f

    const-string v6, "null cannot be cast to non-null type com.android.launcher3.BubbleTextView"

    if-eq p3, v0, :cond_6

    const/16 v0, 0x2000

    if-eq p3, v0, :cond_5

    const/16 v0, 0x4000

    if-eq p3, v0, :cond_4

    const v0, 0x8000

    if-eq p3, v0, :cond_2

    const/high16 v0, 0x10000

    if-ne p3, v0, :cond_1

    const p3, 0x7f0e00f4

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, v5}, Lcom/android/launcher3/BubbleTextView;->setLongPressTimeoutFactor(F)V

    iget-object p2, p0, Ll3/c;->e:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p2, p0, Ll3/c;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Ll3/c;->f:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object p3, p0, Ll3/c;->a:Landroid/content/Context;

    check-cast p3, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p3}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p3

    iget p3, p3, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object p2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TWOLINE_ALLAPPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget p0, p0, Ll3/c;->c:I

    add-int/2addr p3, p0

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected view type"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const p3, 0x7f0e00f0

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v6}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p2, v5}, Lcom/android/launcher3/BubbleTextView;->setLongPressTimeoutFactor(F)V

    iget-object p3, p0, Ll3/c;->e:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p3, p0, Ll3/c;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget-object v0, p0, Ll3/c;->a:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object p3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TWOLINE_ALLAPPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget p0, p0, Ll3/c;->c:I

    add-int/2addr p3, p0

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p1, v3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f1201e7

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    new-instance p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    const p0, 0x7f0e00ef

    invoke-virtual {p1, p0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_6
    const p3, 0x7f0e00ee

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "mLayoutInflater.inflate(\u2026, false\n                )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v6}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p2, v5}, Lcom/android/launcher3/BubbleTextView;->setLongPressTimeoutFactor(F)V

    iget-object p3, p0, Ll3/c;->e:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p3, p0, Ll3/c;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget-object v0, p0, Ll3/c;->a:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object p3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TWOLINE_ALLAPPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget p0, p0, Ll3/c;->c:I

    add-int/2addr p3, p0

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_7
    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "mLayoutInflater.inflate(\u2026tem_title, parent, false)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f1201e1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    new-instance p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    :goto_0
    move-object p0, p1

    goto :goto_2

    :cond_9
    const p3, 0x7f0e00ed

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "mLayoutInflater.inflate(\u2026em_header, parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f0b02a6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p0, p0, Ll3/c;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x7f1201e3

    goto :goto_1

    :cond_a
    const p0, 0x7f1201e2

    :goto_1
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    :goto_2
    return-object p0
.end method

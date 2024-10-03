.class public final Lcom/nothing/launcher/widgets/b;
.super Lcom/android/launcher3/model/data/PackageItemInfo;
.source "SourceFile"


# instance fields
.field private a:Lcom/nothing/launcher/widgets/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/os/UserHandle;Lcom/nothing/launcher/widgets/a;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ntCardWidgetsCategoryInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput-object p4, p0, Lcom/nothing/launcher/widgets/b;->a:Lcom/nothing/launcher/widgets/a;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/widgets/b;->h()Lcom/nothing/launcher/widgets/b;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/android/launcher3/model/data/PackageItemInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/widgets/b;->h()Lcom/nothing/launcher/widgets/b;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lcom/nothing/launcher/widgets/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/nothing/launcher/widgets/b;

    iget-object v2, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    iget v3, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/nothing/launcher/widgets/b;->a:Lcom/nothing/launcher/widgets/a;

    iget-object p1, p1, Lcom/nothing/launcher/widgets/b;->a:Lcom/nothing/launcher/widgets/a;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public h()Lcom/nothing/launcher/widgets/b;
    .locals 5

    new-instance v0, Lcom/nothing/launcher/widgets/b;

    iget-object v1, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v2, "packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    iget-object v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const-string v4, "user"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/widgets/b;->a:Lcom/nothing/launcher/widgets/a;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/nothing/launcher/widgets/b;-><init>(Ljava/lang/String;ILandroid/os/UserHandle;Lcom/nothing/launcher/widgets/a;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/nothing/launcher/widgets/b;->a:Lcom/nothing/launcher/widgets/a;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final i()Lcom/nothing/launcher/widgets/a;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/widgets/b;->a:Lcom/nothing/launcher/widgets/a;

    return-object p0
.end method

.method public final j(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/widgets/b;->a:Lcom/nothing/launcher/widgets/a;

    invoke-virtual {v0}, Lcom/nothing/launcher/widgets/a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lz4/i;->a:Lz4/i;

    invoke-virtual {v0, p0}, Lz4/i;->c(Lcom/nothing/launcher/widgets/b;)Lcom/nothing/launcher/widgets/l;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/nothing/launcher/widgets/l;->d()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final k(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/widgets/b;->a:Lcom/nothing/launcher/widgets/a;

    invoke-virtual {v0}, Lcom/nothing/launcher/widgets/a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object p0, p0, Lcom/nothing/launcher/widgets/b;->a:Lcom/nothing/launcher/widgets/a;

    invoke-virtual {p0}, Lcom/nothing/launcher/widgets/a;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lz4/i;->a:Lz4/i;

    invoke-virtual {v0, p0}, Lz4/i;->c(Lcom/nothing/launcher/widgets/b;)Lcom/nothing/launcher/widgets/l;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nothing/launcher/widgets/l;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Clock"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nothing/launcher/widgets/b;->a:Lcom/nothing/launcher/widgets/a;

    const v1, 0x7f1201ec

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "context.getString(R.string.nt_widgets_clock_title)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/nothing/launcher/widgets/a;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/nothing/launcher/widgets/b;->a:Lcom/nothing/launcher/widgets/a;

    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {p1, v1}, Lcom/nothing/launcher/widgets/a;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

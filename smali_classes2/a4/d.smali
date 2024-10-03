.class public final La4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ln5/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x14

    new-array v0, v0, [Ln5/k;

    new-instance v1, Ln5/k;

    const v2, 0x7f08029b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201b5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:emoji"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ln5/k;

    const v2, 0x7f08036c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201d6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:smile"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ln5/k;

    const v2, 0x7f080363

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201cd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:game"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ln5/k;

    const v2, 0x7f08036b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201d5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:shopping"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ln5/k;

    const v2, 0x7f08036d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201d7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:social"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ln5/k;

    const v2, 0x7f080360

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201ca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:cherry"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ln5/k;

    const v2, 0x7f080370

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201da

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:work"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Ln5/k;

    const v2, 0x7f080366

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:media"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Ln5/k;

    const v2, 0x7f080367

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201d1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:music"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Ln5/k;

    const v2, 0x7f080362

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201cc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:finance"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Ln5/k;

    const v2, 0x7f08036e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201d8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:tools"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Ln5/k;

    const v2, 0x7f08036f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201d9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:travel"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Ln5/k;

    const v2, 0x7f080369

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201d3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:productivity"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Ln5/k;

    const v2, 0x7f08036a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201d4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:reading"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Ln5/k;

    const v2, 0x7f080371

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201db

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:workout"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Ln5/k;

    const v2, 0x7f08035e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201c8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:bomb"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Ln5/k;

    const v2, 0x7f080361

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201cb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:favourites"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Ln5/k;

    const v2, 0x7f08035f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201c9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:cat"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Ln5/k;

    const v2, 0x7f080368

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201d2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:pearlMilkTea"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Ln5/k;

    const v2, 0x7f080365

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f1201cf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "custom:helicopter"

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    invoke-static {v0}, Lo5/d0;->h([Ln5/k;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, La4/d;->a:Ljava/util/Map;

    return-void
.end method

.method public static final a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, La4/d;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln5/k;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ln5/k;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x7f08036c

    :goto_0
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    const v0, 0x7f060365

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-object p0
.end method

.method public static final b(Ljava/lang/String;)Ln5/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ln5/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, ":"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lh6/l;->e0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    invoke-static {v0, p0}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public static final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ln5/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    sget-object v0, La4/d;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static final d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, La4/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln5/k;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ln5/k;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final e(Ljava/lang/String;)Z
    .locals 4

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "custom"

    invoke-static {p0, v3, v0, v1, v2}, Lh6/l;->y(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "category"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

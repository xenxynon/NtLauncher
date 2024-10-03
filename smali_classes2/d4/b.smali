.class public Ld4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld4/b$a;
    }
.end annotation


# static fields
.field public static final e:Ld4/b$a;


# instance fields
.field private final a:Landroid/graphics/Point;

.field private final b:I

.field private final c:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Le4/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lb4/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld4/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld4/b$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Ld4/b;->e:Ld4/b$a;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;ILandroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            "I",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Le4/a;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lb4/a;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "targetSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalScreenOccupancyMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "affectedMap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld4/b;->a:Landroid/graphics/Point;

    iput p2, p0, Ld4/b;->b:I

    iput-object p3, p0, Ld4/b;->c:Landroidx/collection/ArrayMap;

    iput-object p4, p0, Ld4/b;->d:Landroidx/collection/ArrayMap;

    return-void
.end method

.method private final b(Landroidx/collection/ArrayMap;I)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Le4/a;",
            ">;I)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result p2

    if-ge p0, p2, :cond_0

    invoke-virtual {p1, p0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected final a(Landroidx/collection/ArrayMap;I)Le4/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Le4/a;",
            ">;I)",
            "Le4/a;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Ld4/b;->b(Landroidx/collection/ArrayMap;I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Le6/d;

    iget v0, p0, Ld4/b;->b:I

    const/4 v1, 0x0

    invoke-direct {p2, v1, v0}, Le6/d;-><init>(II)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Le6/d;->g(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    iget-object p0, p0, Ld4/b;->c:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le4/a;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public c(ILb4/a;Le4/a;)Z
    .locals 7

    const-string v0, "favoriteItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "occupancy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    invoke-virtual {p3}, Le4/a;->c()Le4/a;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Le4/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    iget-object v5, p0, Ld4/b;->a:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-direct {v4, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v2, v3, v4}, Le4/a;-><init>(Ljava/lang/String;Landroid/graphics/Point;)V

    invoke-virtual {p3, v2}, Le4/a;->f(Le4/a;)V

    :cond_1
    move-object p3, v2

    sget-object v2, Lf4/a;->a:Lf4/a;

    iget-object v3, p0, Ld4/b;->a:Landroid/graphics/Point;

    invoke-virtual {v2, v3, p2, p3, v0}, Lf4/a;->c(Landroid/graphics/Point;Lb4/a;Le4/a;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Lb4/a;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p2}, Lb4/a;->x()Z

    move-result p0

    return p0
.end method

.method protected final d(Lb4/a;Le4/a;)Z
    .locals 8

    const-string v0, "favoriteItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "occupancy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lf4/a;->a:Lf4/a;

    iget-object v2, p0, Ld4/b;->a:Landroid/graphics/Point;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v7}, Lf4/a;->d(Lf4/a;Landroid/graphics/Point;Lb4/a;Le4/a;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.class public final Lf4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf4/a;

    invoke-direct {v0}, Lf4/a;-><init>()V

    sput-object v0, Lf4/a;->a:Lf4/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/util/HashSet;Landroid/graphics/Point;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/graphics/Point;",
            ">;",
            "Landroid/graphics/Point;",
            ")Z"
        }
    .end annotation

    invoke-static {p1, p2}, Lo5/j;->B(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final b(Lb4/a;Le4/a;)Z
    .locals 5

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p1}, Lb4/a;->n()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p0, v1

    invoke-virtual {p1}, Lb4/a;->o()I

    move-result v0

    const/4 v2, 0x1

    aput v0, p0, v2

    invoke-virtual {p2}, Le4/a;->b()Le4/b;

    move-result-object v0

    invoke-virtual {p1}, Lb4/a;->q()I

    move-result v3

    invoke-virtual {p1}, Lb4/a;->r()I

    move-result v4

    invoke-virtual {v0, p0, v3, v4}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCellFromBottom([III)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    aget v1, p0, v1

    aget p0, p0, v2

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2}, Le4/a;->b()Le4/b;

    move-result-object p0

    invoke-virtual {p0}, Le4/b;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lb4/a;->s(Landroid/graphics/Point;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Le4/a;->g(Lb4/a;)V

    :cond_0
    invoke-virtual {p1}, Lb4/a;->x()Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lf4/a;Landroid/graphics/Point;Lb4/a;Le4/a;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lf4/a;->c(Landroid/graphics/Point;Lb4/a;Le4/a;Z)Z

    move-result p0

    return p0
.end method

.method private final e(Landroid/graphics/Point;Lb4/a;Le4/a;)Z
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p2}, Lb4/a;->n()I

    move-result v3

    invoke-virtual {p2}, Lb4/a;->o()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v2}, Lf4/a;->a(Ljava/util/HashSet;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v2, p2, p3}, Lf4/a;->g(Landroid/graphics/Point;Landroid/graphics/Point;Lb4/a;Le4/a;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1, p1, v2, v0}, Lf4/a;->f(Ljava/util/LinkedList;Landroid/graphics/Point;Landroid/graphics/Point;Ljava/util/HashSet;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p2}, Lb4/a;->x()Z

    move-result p0

    return p0
.end method

.method private final f(Ljava/util/LinkedList;Landroid/graphics/Point;Landroid/graphics/Point;Ljava/util/HashSet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Landroid/graphics/Point;",
            ">;",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Point;",
            "Ljava/util/HashSet<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    iget v0, p3, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iget v3, p3, Landroid/graphics/Point;->x:I

    add-int/lit8 v4, v3, -0x1

    add-int/2addr v3, v2

    iget v5, p2, Landroid/graphics/Point;->y:I

    const/4 v6, 0x0

    invoke-static {v6, v5}, Le6/e;->i(II)Le6/d;

    move-result-object v5

    iget p2, p2, Landroid/graphics/Point;->x:I

    invoke-static {v6, p2}, Le6/e;->i(II)Le6/d;

    move-result-object p2

    new-instance v7, Landroid/graphics/Point;

    iget v8, p3, Landroid/graphics/Point;->x:I

    invoke-direct {v7, v8, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5}, Le6/b;->b()I

    move-result v8

    invoke-virtual {v5}, Le6/b;->c()I

    move-result v9

    if-gt v0, v9, :cond_0

    if-gt v8, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p4, v7}, Lf4/a;->a(Ljava/util/HashSet;Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v7}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Landroid/graphics/Point;

    iget v7, p3, Landroid/graphics/Point;->x:I

    invoke-direct {v0, v7, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5}, Le6/b;->b()I

    move-result v7

    invoke-virtual {v5}, Le6/b;->c()I

    move-result v5

    if-gt v1, v5, :cond_2

    if-gt v7, v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v6

    :goto_1
    if-eqz v1, :cond_3

    invoke-direct {p0, p4, v0}, Lf4/a;->a(Ljava/util/HashSet;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v4, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2}, Le6/b;->b()I

    move-result v1

    invoke-virtual {p2}, Le6/b;->c()I

    move-result v5

    if-gt v4, v5, :cond_4

    if-gt v1, v4, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v6

    :goto_2
    if-eqz v1, :cond_5

    invoke-direct {p0, p4, v0}, Lf4/a;->a(Ljava/util/HashSet;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_5
    new-instance v0, Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v3, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2}, Le6/b;->b()I

    move-result p3

    invoke-virtual {p2}, Le6/b;->c()I

    move-result p2

    if-gt v3, p2, :cond_6

    if-gt p3, v3, :cond_6

    goto :goto_3

    :cond_6
    move v2, v6

    :goto_3
    if-eqz v2, :cond_7

    invoke-direct {p0, p4, v0}, Lf4/a;->a(Ljava/util/HashSet;Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method private final g(Landroid/graphics/Point;Landroid/graphics/Point;Lb4/a;Le4/a;)Z
    .locals 3

    iget p0, p2, Landroid/graphics/Point;->x:I

    iget v0, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p4}, Le4/a;->b()Le4/b;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Le4/b;->d(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lb4/a;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p2, p1}, Lb4/a;->v(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p4}, Le4/a;->b()Le4/b;

    move-result-object p1

    invoke-virtual {p3}, Lb4/a;->q()I

    move-result v1

    invoke-virtual {p3}, Lb4/a;->r()I

    move-result v2

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p4}, Le4/a;->b()Le4/b;

    move-result-object p1

    invoke-virtual {p1}, Le4/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lb4/a;->s(Landroid/graphics/Point;Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Le4/a;->g(Lb4/a;)V

    :cond_2
    return p0
.end method


# virtual methods
.method public final c(Landroid/graphics/Point;Lb4/a;Le4/a;Z)Z
    .locals 3

    const-string v0, "targetSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "occupancyNode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Le4/a;->b()Le4/b;

    move-result-object v0

    invoke-virtual {v0}, Le4/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Le4/a;->b()Le4/b;

    move-result-object v1

    invoke-virtual {v1, p2}, Le4/b;->a(Lb4/a;)Z

    move-result v1

    const-string v2, "MigrateAlgorithmUtils"

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "searchPlacement: current screen "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has no enough space "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Le4/a;->b()Le4/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to place "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "searchPlacement: go search aligned placement on screen "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lf4/a;->b(Lb4/a;Le4/a;)Z

    move-result p0

    goto :goto_0

    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "searchPlacement: go search shortest path on screen "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lf4/a;->e(Landroid/graphics/Point;Lb4/a;Le4/a;)Z

    move-result p0

    :goto_0
    return p0
.end method

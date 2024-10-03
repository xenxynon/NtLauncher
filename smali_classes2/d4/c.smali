.class public final Ld4/c;
.super Ld4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld4/c$a;
    }
.end annotation


# static fields
.field public static final j:Ld4/c$a;


# instance fields
.field private final f:Landroid/graphics/Point;

.field private final g:I

.field private final h:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Le4/a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroidx/collection/ArrayMap;
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

    new-instance v0, Ld4/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld4/c$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Ld4/c;->j:Ld4/c$a;

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

    invoke-direct {p0, p1, p2, p3, p4}, Ld4/b;-><init>(Landroid/graphics/Point;ILandroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    iput-object p1, p0, Ld4/c;->f:Landroid/graphics/Point;

    iput p2, p0, Ld4/c;->g:I

    iput-object p3, p0, Ld4/c;->h:Landroidx/collection/ArrayMap;

    iput-object p4, p0, Ld4/c;->i:Landroidx/collection/ArrayMap;

    return-void
.end method

.method private final g(Ljava/util/ArrayList;Le4/a;Z)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb4/a;",
            ">;",
            "Le4/a;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lb4/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lb4/a;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {p0, v3, p2}, Ld4/b;->d(Lb4/a;Le4/a;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_1
    sget-object v6, Lf4/a;->a:Lf4/a;

    iget-object v7, p0, Ld4/c;->f:Landroid/graphics/Point;

    invoke-virtual {v6, v7, v3, p2, v5}, Lf4/a;->c(Landroid/graphics/Point;Lb4/a;Le4/a;Z)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    move v4, v5

    :cond_2
    if-eqz v4, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v1, v0

    :cond_4
    instance-of p0, v1, Ljava/util/ArrayList;

    if-eqz p0, :cond_5

    move-object p0, v1

    check-cast p0, Ljava/util/ArrayList;

    move-object v0, v1

    :cond_5
    return-object v0
.end method

.method private final h(ILe4/a;)Ln5/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le4/a;",
            ")",
            "Ln5/k<",
            "Ljava/lang/Boolean;",
            "Ljava/util/ArrayList<",
            "Lb4/a;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Ld4/c;->i:Landroidx/collection/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ld4/c;->g(Ljava/util/ArrayList;Le4/a;Z)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    new-instance p0, Ln5/k;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ln5/k;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p0}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method private final i(ILjava/util/ArrayList;Ly5/l;)Ln5/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lb4/a;",
            ">;",
            "Ly5/l<",
            "-",
            "Lb4/a;",
            "Ln5/t;",
            ">;)",
            "Ln5/k<",
            "Ljava/lang/Boolean;",
            "Ljava/util/ArrayList<",
            "Lb4/a;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Ld4/c;->h:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, v0, p1}, Ld4/b;->a(Landroidx/collection/ArrayMap;I)Le4/a;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lb4/a;->o:Lb4/a$a;

    invoke-virtual {v0, p2, p3}, Lb4/a$a;->a(Ljava/util/ArrayList;Ly5/l;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p1}, Le4/a;->a()Le4/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p3, v1, v2}, Ld4/c;->g(Ljava/util/ArrayList;Le4/a;Z)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-ne p0, v3, :cond_0

    move v2, v3

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Le4/a;->b()Le4/b;

    move-result-object p0

    invoke-virtual {p1, p0}, Le4/a;->e(Le4/b;)V

    invoke-virtual {v0, p3, p2}, Lb4/a$a;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance p0, Ln5/k;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    new-instance p0, Ln5/k;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private final j(ILe4/a;Ljava/util/ArrayList;Ly5/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le4/a;",
            "Ljava/util/ArrayList<",
            "Lb4/a;",
            ">;",
            "Ly5/l<",
            "-",
            "Lb4/a;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb4/a;

    invoke-interface {p4, v0}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, p2}, Ld4/b;->c(ILb4/a;Le4/a;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    iget v0, p0, Ld4/c;->g:I

    :goto_0
    const/4 v1, -0x1

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v0}, Ld4/c;->f(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 6

    iget-object v0, p0, Ld4/c;->h:Landroidx/collection/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le4/a;

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v0}, Ld4/c;->h(ILe4/a;)Ln5/k;

    move-result-object v1

    invoke-virtual {v1}, Ln5/k;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "findPlacementSolution: screen#"

    const-string v4, "NTWorkspacePlacementSolutionV2"

    if-eqz v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " settled down in original screen"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ln5/k;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    sget-object v2, Ld4/c$b;->g:Ld4/c$b;

    invoke-direct {p0, p1, v1, v2}, Ld4/c;->i(ILjava/util/ArrayList;Ly5/l;)Ln5/k;

    move-result-object v5

    invoke-virtual {v5}, Ln5/k;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " settled down in next screen"

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " settled down in new screen"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1, v2}, Ld4/c;->j(ILe4/a;Ljava/util/ArrayList;Ly5/l;)V

    :cond_3
    :goto_1
    return-void
.end method

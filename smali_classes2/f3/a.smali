.class public final Lf3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lf3/a;->a:Ljava/util/Map;

    return-void
.end method

.method private final c(Ljava/util/List;Lf3/l;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le3/e;",
            ">;",
            "Lf3/l;",
            ")",
            "Ljava/util/List<",
            "Lf3/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lo5/j;->n(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le3/e;

    sget-object v3, Lf3/e;->d:Lf3/e$a;

    invoke-interface {v2}, Le3/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lf3/e$a;->b(Ljava/lang/String;)Lf3/e;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lf3/a;->a:Ljava/util/Map;

    invoke-interface {v2}, Le3/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Le3/e;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le3/f;

    invoke-interface {v4}, Le3/f;->a()[B

    move-result-object v4

    invoke-static {v4}, Lf3/f;->a([B)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lf3/e;->d:Lf3/e$a;

    invoke-interface {v2}, Le3/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lf3/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf3/e;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lf3/l;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lf3/e;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v4}, Lf3/l;->f(I)V

    invoke-interface {v2}, Le3/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lf3/l;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lf3/a;->a:Ljava/util/Map;

    return-object p0
.end method

.method public final b(Ljava/util/List;Lf3/l;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le3/e;",
            ">;",
            "Lf3/l;",
            ")",
            "Ljava/util/List<",
            "Lf3/e;",
            ">;"
        }
    .end annotation

    const-string v0, "categoryList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedEmojiInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lf3/a;->c(Ljava/util/List;Lf3/l;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

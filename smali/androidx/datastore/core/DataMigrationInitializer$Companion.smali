.class public final Landroidx/datastore/core/DataMigrationInitializer$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/core/DataMigrationInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Landroidx/datastore/core/DataMigrationInitializer$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$runMigrations(Landroidx/datastore/core/DataMigrationInitializer$Companion;Ljava/util/List;Landroidx/datastore/core/InitializerApi;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/core/DataMigrationInitializer$Companion;->runMigrations(Ljava/util/List;Landroidx/datastore/core/InitializerApi;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final runMigrations(Ljava/util/List;Landroidx/datastore/core/InitializerApi;Lq5/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Landroidx/datastore/core/DataMigration<",
            "TT;>;>;",
            "Landroidx/datastore/core/InitializerApi<",
            "TT;>;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;

    iget v1, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;

    invoke-direct {v0, p0, p3}, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;-><init>(Landroidx/datastore/core/DataMigrationInitializer$Companion;Lq5/d;)V

    :goto_0
    iget-object p0, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->result:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p3

    iget v1, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object p2, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/internal/a0;

    :try_start_0
    invoke-static {p0}, Ln5/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Ln5/m;->b(Ljava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;

    const/4 v4, 0x0

    invoke-direct {v1, p1, p0, v4}, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;-><init>(Ljava/util/List;Ljava/util/List;Lq5/d;)V

    iput-object p0, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->label:I

    invoke-interface {p2, v1, v0}, Landroidx/datastore/core/InitializerApi;->updateData(Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p3, :cond_4

    return-object p3

    :cond_4
    move-object p1, p0

    :goto_1
    new-instance p0, Lkotlin/jvm/internal/a0;

    invoke-direct {p0}, Lkotlin/jvm/internal/a0;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object p2, p0

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly5/l;

    :try_start_1
    iput-object p2, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->L$1:Ljava/lang/Object;

    iput v2, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->label:I

    invoke-interface {p0, v0}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, p3, :cond_5

    return-object p3

    :goto_3
    iget-object v1, p2, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    if-nez v1, :cond_6

    iput-object p0, p2, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    iget-object v1, p2, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1, p0}, Ln5/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    iget-object p0, p2, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    if-nez p0, :cond_8

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_8
    throw p0
.end method


# virtual methods
.method public final getInitializer(Ljava/util/List;)Ly5/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Landroidx/datastore/core/DataMigration<",
            "TT;>;>;)",
            "Ly5/p<",
            "Landroidx/datastore/core/InitializerApi<",
            "TT;>;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string p0, "migrations"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/datastore/core/DataMigrationInitializer$Companion$getInitializer$1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/datastore/core/DataMigrationInitializer$Companion$getInitializer$1;-><init>(Ljava/util/List;Lq5/d;)V

    return-object p0
.end method

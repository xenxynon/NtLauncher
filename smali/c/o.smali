.class public final synthetic Lc/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lc/r$b;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lc/r$b;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/o;->a:Lc/r$b;

    iput-object p2, p0, Lc/o;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc/o;->a:Lc/r$b;

    iget-object p0, p0, Lc/o;->b:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p0, p1}, Lc/r;->e(Lc/r$b;Ljava/util/ArrayList;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
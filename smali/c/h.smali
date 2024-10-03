.class public final synthetic Lc/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lc/r;

.field public final synthetic b:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lc/r;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/h;->a:Lc/r;

    iput-object p2, p0, Lc/h;->b:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc/h;->a:Lc/r;

    iget-object p0, p0, Lc/h;->b:Ljava/util/function/Predicate;

    invoke-static {v0, p0}, Lc/r;->a(Lc/r;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

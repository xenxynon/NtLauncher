.class public final Lf3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf3/g$a;,
        Lf3/g$b;
    }
.end annotation


# instance fields
.field private final a:Lf3/g$a;

.field private b:Lf3/g$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf3/g$a;

    invoke-direct {v0, p0}, Lf3/g$a;-><init>(Lf3/g;)V

    iput-object v0, p0, Lf3/g;->a:Lf3/g$a;

    return-void
.end method


# virtual methods
.method public final a()Lf3/g$b;
    .locals 0

    iget-object p0, p0, Lf3/g;->b:Lf3/g$b;

    return-object p0
.end method

.method public final b(Lf3/g$b;)V
    .locals 0

    iput-object p1, p0, Lf3/g;->b:Lf3/g$b;

    return-void
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lf3/g;->a:Lf3/g$a;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

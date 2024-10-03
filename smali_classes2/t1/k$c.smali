.class public Lt1/k$c;
.super Lt1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lt1/k<",
        "TT;*>;>",
        "Lt1/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Lt1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt1/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lt1/b;-><init>()V

    iput-object p1, p0, Lt1/k$c;->b:Lt1/k;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lt1/f;Lt1/i;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lt1/k$c;->g(Lt1/f;Lt1/i;)Lt1/k;

    move-result-object p0

    return-object p0
.end method

.method public g(Lt1/f;Lt1/i;)Lt1/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/f;",
            "Lt1/i;",
            ")TT;"
        }
    .end annotation

    iget-object p0, p0, Lt1/k$c;->b:Lt1/k;

    invoke-static {p0, p1, p2}, Lt1/k;->parsePartialFrom(Lt1/k;Lt1/f;Lt1/i;)Lt1/k;

    move-result-object p0

    return-object p0
.end method

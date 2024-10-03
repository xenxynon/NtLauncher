.class final Lt1/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/x$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/x;->a(Lt1/e;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lt1/e;


# direct methods
.method constructor <init>(Lt1/e;)V
    .locals 0

    iput-object p1, p0, Lt1/x$a;->a:Lt1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public byteAt(I)B
    .locals 0

    iget-object p0, p0, Lt1/x$a;->a:Lt1/e;

    invoke-virtual {p0, p1}, Lt1/e;->a(I)B

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lt1/x$a;->a:Lt1/e;

    invoke-virtual {p0}, Lt1/e;->size()I

    move-result p0

    return p0
.end method

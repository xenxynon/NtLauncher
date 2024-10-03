.class public final Lq5/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq5/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lq5/g;Lq5/g;)Lq5/g;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lq5/h;->g:Lq5/h;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lq5/g$a$a;->g:Lq5/g$a$a;

    invoke-interface {p1, p0, v0}, Lq5/g;->fold(Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq5/g;

    :goto_0
    return-object p0
.end method

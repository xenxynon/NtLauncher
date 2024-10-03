.class public final Lf2/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/c$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf2/c$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Ljava/lang/Class;)Lf2/c$j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lf2/c$j;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lf2/c$g$a;->c(Lf2/c$g;Ljava/lang/String;[Ljava/lang/Class;)Lf2/c$j;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lf2/c$i;
    .locals 0

    invoke-static {p0, p1}, Lf2/c$g$a;->b(Lf2/c$g;Ljava/lang/String;)Lf2/c$i;

    move-result-object p0

    return-object p0
.end method

.method public varargs c([Ljava/lang/Class;)Lf2/c$h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lf2/c$h;"
        }
    .end annotation

    invoke-static {p0, p1}, Lf2/c$g$a;->a(Lf2/c$g;[Ljava/lang/Class;)Lf2/c$h;

    move-result-object p0

    return-object p0
.end method

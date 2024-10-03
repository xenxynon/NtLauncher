.class public final Lf2/c$g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf2/c$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static varargs a(Lf2/c$g;[Ljava/lang/Class;)Lf2/c$h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/c$g;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lf2/c$h;"
        }
    .end annotation

    const-string p0, "parameterTypes"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lf2/c$g$a$a;

    invoke-direct {p0}, Lf2/c$g$a$a;-><init>()V

    return-object p0
.end method

.method public static b(Lf2/c$g;Ljava/lang/String;)Lf2/c$i;
    .locals 0

    const-string p0, "fieldName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lf2/c$g$a$b;

    invoke-direct {p0}, Lf2/c$g$a$b;-><init>()V

    return-object p0
.end method

.method public static varargs c(Lf2/c$g;Ljava/lang/String;[Ljava/lang/Class;)Lf2/c$j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/c$g;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lf2/c$j;"
        }
    .end annotation

    const-string p0, "methodName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parameterTypes"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lf2/c$g$a$c;

    invoke-direct {p0}, Lf2/c$g$a$c;-><init>()V

    return-object p0
.end method

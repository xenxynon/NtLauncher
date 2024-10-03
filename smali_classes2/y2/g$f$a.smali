.class public final Ly2/g$f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/g$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ly2/g$f;Ljava/lang/String;)Ly2/g$g;
    .locals 0

    const-string p0, "fieldName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ly2/g$f$a$a;

    invoke-direct {p0}, Ly2/g$f$a$a;-><init>()V

    return-object p0
.end method

.method public static varargs b(Ly2/g$f;Ljava/lang/String;[Ljava/lang/Class;)Ly2/g$h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/g$f;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ly2/g$h;"
        }
    .end annotation

    const-string p0, "methodName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parameterTypes"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ly2/g$f$a$b;

    invoke-direct {p0}, Ly2/g$f$a$b;-><init>()V

    return-object p0
.end method

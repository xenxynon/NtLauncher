.class public final Ly2/g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/g$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly2/g$a;-><init>()V
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
.method public varargs a(Ljava/lang/String;[Ljava/lang/Class;)Ly2/g$h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ly2/g$h;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Ly2/g$f$a;->b(Ly2/g$f;Ljava/lang/String;[Ljava/lang/Class;)Ly2/g$h;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;)Ly2/g$g;
    .locals 0

    invoke-static {p0, p1}, Ly2/g$f$a;->a(Ly2/g$f;Ljava/lang/String;)Ly2/g$g;

    move-result-object p0

    return-object p0
.end method

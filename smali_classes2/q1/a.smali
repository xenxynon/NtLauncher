.class final Lq1/a;
.super Lq1/b;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/reflect/AccessibleObject;)V
    .locals 0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-void
.end method

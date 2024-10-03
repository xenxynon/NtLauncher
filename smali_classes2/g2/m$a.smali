.class public abstract Lg2/m$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lg2/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg2/m$a$a;
    }
.end annotation


# direct methods
.method public static R(Landroid/os/IBinder;)Lg2/m;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.nothing.cardservice.ICardWidgetService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lg2/m;

    if-eqz v1, :cond_1

    check-cast v0, Lg2/m;

    return-object v0

    :cond_1
    new-instance v0, Lg2/m$a$a;

    invoke-direct {v0, p0}, Lg2/m$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static S()Lg2/m;
    .locals 1

    sget-object v0, Lg2/m$a$a;->h:Lg2/m;

    return-object v0
.end method

.class public abstract Lc1/a$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lc1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc1/a$a$a;
    }
.end annotation


# direct methods
.method public static R(Landroid/os/IBinder;)Lc1/a;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.wm.shell.onehanded.IOneHanded"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lc1/a;

    if-eqz v1, :cond_1

    check-cast v0, Lc1/a;

    return-object v0

    :cond_1
    new-instance v0, Lc1/a$a$a;

    invoke-direct {v0, p0}, Lc1/a$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

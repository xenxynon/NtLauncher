.class public abstract Li1/b;
.super Lh1/b;
.source "SourceFile"

# interfaces
.implements Li1/c;


# direct methods
.method public static S(Landroid/os/IBinder;)Li1/c;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Li1/c;

    if-eqz v1, :cond_1

    check-cast v0, Li1/c;

    return-object v0

    :cond_1
    new-instance v0, Li1/a;

    invoke-direct {v0, p0}, Li1/a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

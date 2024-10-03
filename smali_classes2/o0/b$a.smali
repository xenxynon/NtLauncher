.class public abstract Lo0/b$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lo0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0/b$a$a;
    }
.end annotation


# direct methods
.method public static R(Landroid/os/IBinder;)Lo0/b;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.systemui.unfold.progress.IUnfoldAnimation"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lo0/b;

    if-eqz v1, :cond_1

    check-cast v0, Lo0/b;

    return-object v0

    :cond_1
    new-instance v0, Lo0/b$a$a;

    invoke-direct {v0, p0}, Lo0/b$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

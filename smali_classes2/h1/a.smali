.class public Lh1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private final g:Landroid/os/IBinder;

.field private final h:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/a;->g:Landroid/os/IBinder;

    const-string p1, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    iput-object p1, p0, Lh1/a;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final R()Landroid/os/Parcel;
    .locals 1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object p0, p0, Lh1/a;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    return-object v0
.end method

.method protected final S(ILandroid/os/Parcel;)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lh1/a;->g:Landroid/os/IBinder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, p2, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lh1/a;->g:Landroid/os/IBinder;

    return-object p0
.end method

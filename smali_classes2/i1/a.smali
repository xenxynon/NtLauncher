.class public final Li1/a;
.super Lh1/a;
.source "SourceFile"

# interfaces
.implements Li1/c;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lh1/a;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public final G(F)V
    .locals 1

    invoke-virtual {p0}, Lh1/a;->R()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lh1/a;->S(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final L(I)V
    .locals 1

    invoke-virtual {p0}, Lh1/a;->R()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x10

    invoke-virtual {p0, p1, v0}, Lh1/a;->S(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final d()V
    .locals 2

    invoke-virtual {p0}, Lh1/a;->R()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lh1/a;->S(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final e(Landroid/view/WindowManager$LayoutParams;Li1/e;I)V
    .locals 1

    invoke-virtual {p0}, Lh1/a;->R()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lh1/c;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lh1/c;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lh1/a;->S(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final f()V
    .locals 2

    invoke-virtual {p0}, Lh1/a;->R()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lh1/a;->S(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final l()V
    .locals 2

    invoke-virtual {p0}, Lh1/a;->R()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lh1/a;->S(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final m()V
    .locals 2

    invoke-virtual {p0}, Lh1/a;->R()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lh1/a;->S(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final m(Z)V
    .locals 1

    invoke-virtual {p0}, Lh1/a;->R()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lh1/c;->a(Landroid/os/Parcel;Z)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lh1/a;->S(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final n(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lh1/a;->R()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lh1/c;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x14

    invoke-virtual {p0, p1, v0}, Lh1/a;->S(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final o(I)V
    .locals 1

    invoke-virtual {p0}, Lh1/a;->R()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lh1/a;->S(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final q(Landroid/os/Bundle;Li1/e;)V
    .locals 1

    invoke-virtual {p0}, Lh1/a;->R()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lh1/c;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lh1/c;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xe

    invoke-virtual {p0, p1, v0}, Lh1/a;->S(ILandroid/os/Parcel;)V

    return-void
.end method

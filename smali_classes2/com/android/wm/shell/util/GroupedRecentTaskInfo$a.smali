.class Lcom/android/wm/shell/util/GroupedRecentTaskInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/wm/shell/util/GroupedRecentTaskInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
    .locals 0

    new-instance p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public b(I)[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
    .locals 0

    new-array p0, p1, [Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo$a;->a(Landroid/os/Parcel;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo$a;->b(I)[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    move-result-object p0

    return-object p0
.end method
.class public Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/wm/shell/util/GroupedRecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final g:[Landroid/app/ActivityManager$RecentTaskInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final h:Lcom/android/wm/shell/util/SplitBounds;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo$a;

    invoke-direct {v0}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo$a;-><init>()V

    sput-object v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/app/ActivityManager$RecentTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/ActivityManager$RecentTaskInfo;

    iput-object v0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->g:[Landroid/app/ActivityManager$RecentTaskInfo;

    sget-object v0, Lcom/android/wm/shell/util/SplitBounds;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/util/SplitBounds;

    iput-object v0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->h:Lcom/android/wm/shell/util/SplitBounds;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->i:I

    return-void
.end method

.method private b(Landroid/app/ActivityManager$RecentTaskInfo;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "id="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " baseIntent="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "null"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " winMode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/ActivityManager$RecentTaskInfo;->getWindowingMode()I

    move-result p1

    invoke-static {p1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lcom/android/wm/shell/util/SplitBounds;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->h:Lcom/android/wm/shell/util/SplitBounds;

    return-object p0
.end method

.method public c()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->g:[Landroid/app/ActivityManager$RecentTaskInfo;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public d()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->g:[Landroid/app/ActivityManager$RecentTaskInfo;

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public e()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->g:[Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->i:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->g:[Landroid/app/ActivityManager$RecentTaskInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-nez v1, :cond_0

    const-string v2, "Task"

    goto :goto_1

    :cond_0
    const-string v2, ", Task"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->g:[Landroid/app/ActivityManager$RecentTaskInfo;

    aget-object v1, v3, v1

    invoke-direct {p0, v1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->b(Landroid/app/ActivityManager$RecentTaskInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->h:Lcom/android/wm/shell/util/SplitBounds;

    if-eqz v1, :cond_2

    const-string v1, ", SplitBounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->h:Lcom/android/wm/shell/util/SplitBounds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, ", Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->i:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    goto :goto_3

    :cond_3
    const-string p0, "TYPE_FREEFORM"

    goto :goto_2

    :cond_4
    const-string p0, "TYPE_SPLIT"

    goto :goto_2

    :cond_5
    const-string p0, "TYPE_SINGLE"

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->g:[Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->h:Lcom/android/wm/shell/util/SplitBounds;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->i:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

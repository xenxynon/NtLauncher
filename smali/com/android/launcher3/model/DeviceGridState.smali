.class public Lcom/android/launcher3/model/DeviceGridState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/launcher3/model/DeviceGridState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDbFile:Ljava/lang/String;

.field private final mDeviceType:I

.field private final mGridSizeString:Ljava/lang/String;

.field private final mNumHotseat:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->WORKSPACE_SIZE:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/model/DeviceGridState;->mGridSizeString:Ljava/lang/String;

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->HOTSEAT_COUNT:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/DeviceGridState;->mNumHotseat:I

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->DEVICE_TYPE:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/DeviceGridState;->mDeviceType:I

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->DB_FILE:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher3/model/DeviceGridState;->mDbFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%d,%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/DeviceGridState;->mGridSizeString:Ljava/lang/String;

    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    iput v0, p0, Lcom/android/launcher3/model/DeviceGridState;->mNumHotseat:I

    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->deviceType:I

    iput v0, p0, Lcom/android/launcher3/model/DeviceGridState;->mDeviceType:I

    iget-object p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher3/model/DeviceGridState;->mDbFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/launcher3/model/DeviceGridState;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/model/DeviceGridState;->getColumns()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/model/DeviceGridState;->getRows()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceGridState;->getColumns()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/model/DeviceGridState;->getRows()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/DeviceGridState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/DeviceGridState;->compareTo(Lcom/android/launcher3/model/DeviceGridState;)I

    move-result p0

    return p0
.end method

.method public getColumns()Ljava/lang/Integer;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/model/DeviceGridState;->mGridSizeString:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getDbFile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/DeviceGridState;->mDbFile:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceType()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/model/DeviceGridState;->mDeviceType:I

    return p0
.end method

.method public getRows()Ljava/lang/Integer;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/model/DeviceGridState;->mGridSizeString:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getWorkspaceSizeEvent()Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/DeviceGridState;->mGridSizeString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/model/DeviceGridState;->getColumns()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GRID_SIZE_6:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GRID_SIZE_5:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GRID_SIZE_4:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GRID_SIZE_3:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object p0

    :cond_4
    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GRID_SIZE_2:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object p0

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isCompatible(Lcom/android/launcher3/model/DeviceGridState;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/model/DeviceGridState;->mDbFile:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/launcher3/model/DeviceGridState;->mDbFile:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceGridState{mGridSizeString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/model/DeviceGridState;->mGridSizeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mNumHotseat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/model/DeviceGridState;->mNumHotseat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/model/DeviceGridState;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDbFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/model/DeviceGridState;->mDbFile:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToPrefs(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p1

    const/4 v0, 0x4

    new-array v0, v0, [Ln5/k;

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->WORKSPACE_SIZE:Lcom/android/launcher3/ConstantItem;

    iget-object v2, p0, Lcom/android/launcher3/model/DeviceGridState;->mGridSizeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Item;->to(Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->HOTSEAT_COUNT:Lcom/android/launcher3/ConstantItem;

    iget v2, p0, Lcom/android/launcher3/model/DeviceGridState;->mNumHotseat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Item;->to(Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->DEVICE_TYPE:Lcom/android/launcher3/ConstantItem;

    iget v2, p0, Lcom/android/launcher3/model/DeviceGridState;->mDeviceType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Item;->to(Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->DB_FILE:Lcom/android/launcher3/ConstantItem;

    iget-object p0, p0, Lcom/android/launcher3/model/DeviceGridState;->mDbFile:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/Item;->to(Ljava/lang/Object;)Ln5/k;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherPrefs;->put([Ln5/k;)V

    return-void
.end method

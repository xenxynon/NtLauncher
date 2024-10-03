.class public final Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
.super Lt1/k$b;
.source "SourceFile"

# interfaces
.implements Lt1/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/k$b<",
        "Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;",
        "Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;",
        ">;",
        "Lt1/s;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->access$000()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lt1/k$b;-><init>(Lt1/k;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$Attribute;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->access$3900(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Attribute;)V

    return-object p0
.end method

.method public getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 0

    iget-object p0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object p0

    return-object p0
.end method

.method public getFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 0

    iget-object p0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object p0

    return-object p0
.end method

.method public hasContainerInfo()Z
    .locals 0

    iget-object p0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasContainerInfo()Z

    move-result p0

    return p0
.end method

.method public setApplication(Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->access$300(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;)V

    return-object p0
.end method

.method public setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->access$3500(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)V

    return-object p0
.end method

.method public setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->access$3400(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    return-object p0
.end method

.method public setFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->access$1900(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)V

    return-object p0
.end method

.method public setIsKidsMode(Z)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->access$4200(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)V

    return-object p0
.end method

.method public setIsWork(Z)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->access$3200(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)V

    return-object p0
.end method

.method public setRank(I)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->access$3000(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;I)V

    return-object p0
.end method

.method public setShortcut(Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->access$1100(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;)V

    return-object p0
.end method

.method public setSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->access$2200(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Slice;)V

    return-object p0
.end method

.method public setTask(Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->access$700(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;)V

    return-object p0
.end method

.method public setWidget(Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->access$1500(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;)V

    return-object p0
.end method

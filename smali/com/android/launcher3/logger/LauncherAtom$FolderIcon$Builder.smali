.class public final Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
.super Lt1/k$b;
.source "SourceFile"

# interfaces
.implements Lt1/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/k$b<",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;",
        ">;",
        "Lt1/s;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->access$19800()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object v0

    invoke-direct {p0, v0}, Lt1/k$b;-><init>(Lt1/k;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public setCardinality(I)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->access$19900(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;I)V

    return-object p0
.end method

.method public setFromLabelState(Lcom/android/launcher3/logger/LauncherAtom$FromState;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->access$20100(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;Lcom/android/launcher3/logger/LauncherAtom$FromState;)V

    return-object p0
.end method

.method public setLabelInfo(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->access$20500(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToLabelState(Lcom/android/launcher3/logger/LauncherAtom$ToState;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->access$20300(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;Lcom/android/launcher3/logger/LauncherAtom$ToState;)V

    return-object p0
.end method

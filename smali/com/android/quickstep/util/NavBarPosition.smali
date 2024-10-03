.class public Lcom/android/quickstep/util/NavBarPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDisplayRotation:I

.field private final mMode:Lcom/android/launcher3/util/NavigationMode;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/NavigationMode;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/NavBarPosition;->mMode:Lcom/android/launcher3/util/NavigationMode;

    iput p2, p0, Lcom/android/quickstep/util/NavBarPosition;->mDisplayRotation:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/util/NavigationMode;Lcom/android/launcher3/util/DisplayController$Info;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/NavBarPosition;->mMode:Lcom/android/launcher3/util/NavigationMode;

    iget p1, p2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iput p1, p0, Lcom/android/quickstep/util/NavBarPosition;->mDisplayRotation:I

    return-void
.end method


# virtual methods
.method public getRotation()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/util/NavBarPosition;->isLeftEdge()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/util/NavBarPosition;->isRightEdge()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, -0x5a

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    int-to-float p0, p0

    :goto_1
    return p0
.end method

.method public isLeftEdge()Z
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/NavBarPosition;->mMode:Lcom/android/launcher3/util/NavigationMode;

    sget-object v1, Lcom/android/launcher3/util/NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/NavigationMode;

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcom/android/quickstep/util/NavBarPosition;->mDisplayRotation:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRightEdge()Z
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/util/NavBarPosition;->mMode:Lcom/android/launcher3/util/NavigationMode;

    sget-object v1, Lcom/android/launcher3/util/NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/NavigationMode;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcom/android/quickstep/util/NavBarPosition;->mDisplayRotation:I

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

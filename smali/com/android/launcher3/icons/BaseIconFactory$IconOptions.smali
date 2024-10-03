.class public Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/BaseIconFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconOptions"
.end annotation


# instance fields
.field mExtractedColor:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mGenerationMode:I

.field mIsCloneProfile:Z

.field mIsInstantApp:Z

.field mShrinkNonAdaptiveIcons:Z

.field mUserHandle:Landroid/os/UserHandle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mShrinkNonAdaptiveIcons:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mGenerationMode:I

    return-void
.end method


# virtual methods
.method public getUserHandle()Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public setExtractedColor(I)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mExtractedColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setInstantApp(Z)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mIsInstantApp:Z

    return-object p0
.end method

.method public setShrinkNonAdaptiveIcons(Z)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mShrinkNonAdaptiveIcons:Z

    return-object p0
.end method

.method public setUser(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
    .locals 0
    .param p1    # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

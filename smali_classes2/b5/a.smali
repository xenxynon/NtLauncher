.class public final Lb5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb5/a$a;
    }
.end annotation


# static fields
.field public static final b:Lb5/a$a;

.field private static final c:[I

.field private static final d:[I


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb5/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb5/a$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lb5/a;->b:Lb5/a$a;

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lb5/a;->c:[I

    const/16 v0, 0x24

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lb5/a;->d:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x106001e
        0x106001f
        0x1060020
        0x1060021
        0x1060022
        0x1060023
        0x1060024
        0x1060025
        0x1060026
        0x1060027
        0x1060028
        0x1060029
        0x106002b
        0x106002c
        0x106002d
        0x106002e
        0x106002f
        0x1060030
        0x1060031
        0x1060032
        0x1060033
        0x1060034
        0x1060035
        0x1060036
    .end array-data

    :array_1
    .array-data 4
        0x1060038
        0x1060039
        0x106003a
        0x106003b
        0x106003c
        0x106003d
        0x106003e
        0x106003f
        0x1060040
        0x1060041
        0x1060042
        0x1060043
        0x1060045
        0x1060046
        0x1060047
        0x1060048
        0x1060049
        0x106004a
        0x106004b
        0x106004c
        0x106004d
        0x106004e
        0x106004f
        0x1060050
        0x1060052
        0x1060053
        0x1060054
        0x1060055
        0x1060056
        0x1060057
        0x1060058
        0x1060059
        0x106005a
        0x106005b
        0x106005c
        0x106005d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb5/a;->a:Landroid/content/Context;

    return-void
.end method

.method private final a(Ljava/util/List;[ILandroid/util/SparseIntArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;[I",
            "Landroid/util/SparseIntArray;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    array-length v0, p2

    if-eq p0, v0, :cond_0

    const-string p0, "MaterialColorsGenerator"

    const-string p1, "The number of shades computed doesn\'t match the number of resources."

    invoke-static {p0, p1}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    array-length v0, p2

    :goto_0
    if-ge p0, v0, :cond_1

    aget v1, p2, p0

    const/high16 v2, -0x1000000

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {p3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final c()Lc5/q;
    .locals 5

    const-string v0, "Failed to parse THEME_CUSTOMIZATION_OVERLAY_PACKAGES."

    const-string v1, "MaterialColorsGenerator"

    sget-object v2, Lc5/q;->i:Lc5/q;

    iget-object v3, p0, Lb5/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object p0, p0, Lb5/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const-string v4, "theme_customization_overlay_packages"

    invoke-static {v3, v4, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_4

    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "android.theme.customization.theme_style"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "JSONObject(stringForUser\u2026ring(OVERLAY_THEME_STYLE)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lc5/q;->valueOf(Ljava/lang/String;)Lc5/q;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_1
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lc5/q;->i:Lc5/q;

    :goto_3
    move-object v2, p0

    :goto_4
    return-object v2
.end method


# virtual methods
.method public final b(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;
    .locals 3

    const-string v0, "colors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lc5/f;

    iget-object v1, p0, Lb5/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lb5/a;->c()Lc5/q;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lc5/f;-><init>(Landroid/app/WallpaperColors;ZLc5/q;)V

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v0}, Lc5/f;->b()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lb5/a;->c:[I

    invoke-direct {p0, v1, v2, p1}, Lb5/a;->a(Ljava/util/List;[ILandroid/util/SparseIntArray;)V

    invoke-virtual {v0}, Lc5/f;->a()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lb5/a;->d:[I

    invoke-direct {p0, v0, v1, p1}, Lb5/a;->a(Ljava/util/List;[ILandroid/util/SparseIntArray;)V

    return-object p1
.end method

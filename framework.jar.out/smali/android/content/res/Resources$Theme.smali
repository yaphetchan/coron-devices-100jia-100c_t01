.class public final Landroid/content/res/Resources$Theme;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Theme"
.end annotation


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mTheme:I

.field final synthetic this$0:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .parameter

    .prologue
    .line 1785
    iput-object p1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1786
    iget-object v0, p1, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    .line 1787
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->createTheme()I

    move-result v0

    iput v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    .line 1788
    return-void
.end method


# virtual methods
.method public applyStyle(IZ)V
    .locals 1
    .parameter "resid"
    .parameter "force"

    .prologue
    .line 1541
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-static {v0, p1, p2}, Landroid/content/res/AssetManager;->applyThemeStyle(IIZ)V

    .line 1542
    return-void
.end method

.method public dump(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "priority"
    .parameter "tag"
    .parameter "prefix"

    .prologue
    .line 1777
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-static {v0, p1, p2, p3}, Landroid/content/res/AssetManager;->dumpTheme(IILjava/lang/String;Ljava/lang/String;)V

    .line 1778
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1781
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1782
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->releaseTheme(I)V

    .line 1783
    return-void
.end method

.method public obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 9
    .parameter "resid"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1607
    array-length v8, p2

    .line 1608
    .local v8, len:I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #calls: Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
    invoke-static {v0, v8}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1609
    .local v7, array:Landroid/content/res/TypedArray;
    iput-object p2, v7, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 1611
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    iget-object v5, v7, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v7, Landroid/content/res/TypedArray;->mIndices:[I

    move v2, p1

    move v3, v1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->applyStyle(IIII[I[I[I)Z

    .line 1639
    return-object v7
.end method

.method public obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 10
    .parameter "set"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    .line 1692
    array-length v8, p2

    .line 1693
    .local v8, len:I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #calls: Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
    invoke-static {v0, v8}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v7

    .local v7, array:Landroid/content/res/TypedArray;
    move-object v9, p1

    .line 1699
    check-cast v9, Landroid/content/res/XmlBlock$Parser;

    .line 1700
    .local v9, parser:Landroid/content/res/XmlBlock$Parser;
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    if-eqz v9, :cond_0

    iget v3, v9, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    :goto_0
    iget-object v5, v7, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v7, Landroid/content/res/TypedArray;->mIndices:[I

    move v1, p3

    move v2, p4

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->applyStyle(IIII[I[I[I)Z

    .line 1705
    iput-object p2, v7, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 1706
    iput-object v9, v7, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1737
    return-object v7

    .line 1700
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .locals 9
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 1577
    array-length v8, p1

    .line 1578
    .local v8, len:I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #calls: Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
    invoke-static {v0, v8}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1579
    .local v7, array:Landroid/content/res/TypedArray;
    iput-object p1, v7, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 1580
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    iget-object v5, v7, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v7, Landroid/content/res/TypedArray;->mIndices:[I

    move v2, v1

    move v3, v1

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->applyStyle(IIII[I[I[I)Z

    .line 1582
    return-object v7
.end method

.method public resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .locals 3
    .parameter "resid"
    .parameter "outValue"
    .parameter "resolveRefs"

    .prologue
    .line 1759
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    iget v2, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/content/res/AssetManager;->getThemeValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 1766
    .local v0, got:Z
    return v0
.end method

.method public setTo(Landroid/content/res/Resources$Theme;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 1554
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    iget v1, p1, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->copyTheme(II)V

    .line 1555
    return-void
.end method

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PieceFinder : MonoBehaviour
{
    public Texture2D inputImage;
    public int[,] indexes;
    public int width = 10;
    public int height = 10;
    public Color wallColor;
    public Color floorColor;

    [Tooltip("0 = floor\n" +
             "1 = wall\n" +
             "2 = NW corner\n" +
             "3 = NE corner\n" +
             "4 = SE corner\n" +
             "5 = SW corner")]
    public GameObject[] pieces;


    public void FindCorners()
    {
        indexes = new int[width,height];
        
        //populate colors array
        for (int x = 0; x < width; x++)
        {
            for (int y = 0; y < height; y++)
            {
                Color pixelColor = inputImage.GetPixel(x, y);
                
                if (pixelColor == wallColor)
                {
                    indexes[x, y] = 1;
                }
                else if (pixelColor == floorColor)
                {
                    indexes[x, y] = 0;
                }
                else
                {
                    indexes[x, y] = -1;
                }
            }
        }
        
        //find corners
        for (int x = 0; x < width; x++)
        {
            for (int y = 0; y < height; y++)
            {
                if (indexes[x, y] == 1)
                {
                    SurroundingPieces surround = new SurroundingPieces();
                    if (indexes[x, (y + 1)] == 1)
                    {
                        surround.up = true;
                        
                    }
                    
                    if (indexes[x, (y + 1)] == 1)
                    {
                        surround.up = true;
                    }
                    
                    if (indexes[x, (y + 1)] == 1)
                    {
                        surround.up = true;
                    }
                    
                    if (indexes[x, (y + 1)] == 1)
                    {
                        surround.up = true;
                    }
                }
            }
        }
    }   
}

public class SurroundingPieces
{
    public enum PieceType { Vertical, Horizontal, Corner, T, Plus}

    public PieceType peice;
    
    public bool up;
    public bool right;
    public bool down;
    public bool left;

    public int orientation = 0;

    public PieceType FindPieceType()
    {
        if (up && down && !right && !left)
        {
            return PieceType.Vertical;
        }
        
        if (!up && !down && right && left)
        {
            return PieceType.Horizontal;
        }
        
        if (up && down && right && left)
        {
            return PieceType.Plus;
        }

        int counter = 0;
        if (up)
            counter++;

        if (down)
            counter++;

        if (left)
            counter++;

        if (right)
            counter++;

        if (counter == 2)
        {
            //find corner
            orientation = GetCornerOrientation(up, right, down, left);
        }

        if (counter == 3)
        {
            //find T
        }
        
        
        return PieceType.Vertical;
    }

    private int GetCornerOrientation(bool up, bool right, bool down, bool left)
    {
        if (up)
        {
            if (right)
                return 1;
            if (left)
                return 4;
        }
        return 0;
    }
    
    
}